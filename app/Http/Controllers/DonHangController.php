<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Http;
use App\Models\DoanhThu;
use App\Models\DonDaDat;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Redirect;

use App\Models\User;
use App\Models\Giay;
use App\Models\LoaiGiay;
use App\Models\ThuongHieu;
use App\Models\KhuyenMai;
use App\Models\GioHang;
use App\Models\PhanQuyen;
use App\Models\DonHang;

use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Auth;



class DonHangController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(session()->get(key:'check') == 0){
            return view('auth.login');
        } else{
            $data = User::where('id',session('DangNhap'))->first();
            $thuonghieus = ThuongHieu::all();
            $loaigiays = LoaiGiay::all();
            $giays = Giay::all();
            $users = User::all();
            $phanquyens = PhanQuyen::all();
            $khuyenmais = KhuyenMai::all();
            $dadat = DonDaDat::all();
           
            $giohangs = session()->get(key:'gio_hang');
            if(!$giohangs){
                $giohangs = array();
            }
            return view('index')->with('route', 'thanh-toan')
            ->with('data', $data)
            ->with('thuonghieus', $thuonghieus)
            ->with('loaigiays', $loaigiays)
            ->with('giays', $giays)
            ->with('users', $users)
            ->with('phanquyens', $phanquyens)
            ->with('khuyenmais', $khuyenmais)
            ->with('giohangs', $giohangs)
            ->with('dadats', $dadat)
            ;

           

     
        }

    }


    public function thanhtoan(Request $request)
    {
       
        $giohangs = session()->get(key:'gio_hang');
        if(!$giohangs){
            $giohangs = array();
        }

        $thanhtoans = array();

        $check_gio_hangs = $request->input('check-gio-hang');
        foreach($check_gio_hangs as $check_gio_hang){
            foreach($giohangs as $id=>$giohang){
                if($check_gio_hang == $id){
                    $thanhtoans[$id] = $giohang;
                }
            }
        }

        if(session()->get(key:'check') == 0){
            return view('auth.login');
        } else{
            
            
            $data = User::where('id',session('DangNhap'))->first();
            $thuonghieus = ThuongHieu::all();
            $loaigiays = LoaiGiay::all();
            $giays = Giay::all();
            $users = User::all();
            $phanquyens = PhanQuyen::all();
            $khuyenmais = KhuyenMai::all();
            $dadat = DonDaDat::all();
         
             
            return view('index')->with('route', 'thanh-toan')
            ->with('data', $data)
            ->with('thuonghieus', $thuonghieus)
            ->with('loaigiays', $loaigiays)
            ->with('giays', $giays)
            ->with('users', $users)
            ->with('phanquyens', $phanquyens)
            ->with('khuyenmais', $khuyenmais)
            ->with('giohangs', $thanhtoans)
            ->with('dadats', $dadat)
            ;
     
        }

    }

   



    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

       
        // 'ten_nguoi_nhan', 'sdt', 'dia_chi_nhan', 'ghi_chu', 'ten_giay', 'don_gia', 'so_luong', 'thanh_tien'
        // serialize() - unserialize()
        if($request->has('btn')){
                    $giohangs = session()->get(key:'gio_hang');

                  DonHang::create([
                        'ten_nguoi_nhan' => $request->input('ten_nguoi_nhan'),
                        'sdt' => $request->input('sdt'),
                        'dia_chi_nhan' => $request->input('dia_chi_nhan'),
                        'ghi_chu' => $request->input('ghi_chu'),
                        'tong_tien' => $request->input('tong_tien'),
                        'hoa_don' => $request->input('thanh_toans'),
                        'hinh_thuc_thanh_toan' => $request->input('hinh_thuc_thanh_toan'),           
                    ]);
                    // $danh_gias = $request->input('thanh_toans');
                    $danh_gias = session()->get(key:'danh_gias');
                    if(!$danh_gias){
                        $danh_gias = array();
                    }
                    $oks = unserialize($request->input('thanh_toans'));
                    foreach($oks as $id=>$ok){
                        $danh_gias[$id] = $ok;
                        $giay = Giay::find($id);
                        $giay['so_luong_mua'] = $giay['so_luong_mua'] + 1;
                        $giay->save();
            
                    }
                    session()->put('danh_gias', $danh_gias);
            
                    foreach($danh_gias as $iddg=>$danh_gia){
                        // dd($danh_gias);
                        foreach($giohangs as $idgh=>$giohang){
                            if($idgh == $iddg){
                                unset($giohangs[$idgh]);
                                // $giohangs[$idgh] = '';
                            }
                        }
                    }

                    $mail = User::where('id',session('DangNhap'))->first();
                    // dd($giohangs);
                
                    session()->put('gio_hang', $giohangs);
                


                    //Gửi mail khi đặt hàng thành công
                    Mail::send('emails.myEmail',['name'=> $request->input('ten_nguoi_nhan')],function($email)use($mail){
                            $email->subject('Shopping');
                            $email->to($mail->email,'Name');
                        });


                    Mail::send('emails.adminEmail',[
                        'name'=> $request->input('ten_nguoi_nhan'),
                          'diachi' => $request->input('dia_chi_nhan'),
                          'sdt' => $request->input('sdt'),
                          'httt' => $request->input('hinh_thuc_thanh_toan'),
                ],function($email){
                        $email->subject('Shopping');
                        $email->to('pvthinh12345@gmail.com','Name');
                    });



              return Redirect('/');
    
        }else if($request->has('momo')){
         
         
             function execPostRequest($url, $data)
                {
                    $ch = curl_init($url);
                    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
                    curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
                    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                    curl_setopt($ch, CURLOPT_HTTPHEADER, array(
                            'Content-Type: application/json',
                            'Content-Length: ' . strlen($data))
                    );
                    curl_setopt($ch, CURLOPT_TIMEOUT, 5);
                    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
                    //execute post
                    $result = curl_exec($ch);
                    //close connection
                    curl_close($ch);
                    return $result;
                }         
                        
                $endpoint = "https://test-payment.momo.vn/v2/gateway/api/create";

                $partnerCode = 'MOMOBKUN20180529';
                $accessKey = 'klm05TvNBzhg7h7j';
                $secretKey = 'at67qH6mk8w5Y1nAyMoYKMWACiEi2bsa';
                $orderInfo = "Thanh toán qua MoMo";
                $amount = (int)$request->input('tongtien');
                $orderId = time() . "";
                $redirectUrl = "http://127.0.0.1:8000/thanh-toan";
                $ipnUrl = "http://127.0.0.1:8000/thanh-toan";   
                $extraData = "";
         

                $requestId = time() . "";
                $requestType = "payWithATM";
                // $requestType = "captureWallet";

                 //before sign HMAC SHA256 signature
                 $rawHash = "accessKey=" . $accessKey . "&amount=" . $amount . "&extraData=" . $extraData . "&ipnUrl=" . $ipnUrl . "&orderId=" . $orderId . "&orderInfo=" . $orderInfo . "&partnerCode=" . $partnerCode . "&redirectUrl=" . $redirectUrl . "&requestId=" . $requestId . "&requestType=" . $requestType;
                 $signature = hash_hmac("sha256", $rawHash, $secretKey);
                 $data = array('partnerCode' => $partnerCode,
                     'partnerName' => "Test",
                     "storeId" => "MomoTestStore",
                     'requestId' => $requestId,
                     'amount' => $amount,
                     'orderId' => $orderId,
                     'orderInfo' => $orderInfo,
                     'redirectUrl' => $redirectUrl,
                     'ipnUrl' => $ipnUrl,
                     'lang' => 'vi',
                     'extraData' => $extraData,
                     'requestType' => $requestType,
                     'signature' => $signature);
                    
                     
                 $result = execPostRequest($endpoint, json_encode($data));
               
                 $jsonResult = json_decode($result, true);  // decode jso   
              
                 $giohangs = session()->get(key:'gio_hang');

                 DonHang::create([
                       'ten_nguoi_nhan' => $request->input('ten_nguoi_nhan'),
                       'sdt' => $request->input('sdt'),
                       'dia_chi_nhan' => $request->input('dia_chi_nhan'),
                       'ghi_chu' => $request->input('ghi_chu'),
                       'tong_tien' => $request->input('tong_tien'),
                       'hoa_don' => $request->input('thanh_toans'),
                       'hinh_thuc_thanh_toan' => "Thanh toán online bằng MOMO",           
                   ]);
                   // $danh_gias = $request->input('thanh_toans');
                   $danh_gias = session()->get(key:'danh_gias');
                   if(!$danh_gias){
                       $danh_gias = array();
                   }
                   $oks = unserialize($request->input('thanh_toans'));
                   foreach($oks as $id=>$ok){
                       $danh_gias[$id] = $ok;
                       $giay = Giay::find($id);
                       $giay['so_luong_mua'] = $giay['so_luong_mua'] + 1;
                       $giay->save();
           
                   }
                   session()->put('danh_gias', $danh_gias);
            
                    foreach($danh_gias as $iddg=>$danh_gia){
                        // dd($danh_gias);
                        foreach($giohangs as $idgh=>$giohang){
                            if($idgh == $iddg){
                                unset($giohangs[$idgh]);
                                // $giohangs[$idgh] = '';
                            }
                        }
                    }
    
                    $mail = User::where('id',session('DangNhap'))->first();
                    // dd($giohangs);
                
                    session()->put('gio_hang', $giohangs);
                
                    //Gửi mail khi đặt hàng thành công
                    Mail::send('emails.myEmail',['name'=> $request->input('ten_nguoi_nhan')],function($email)use($mail){
                            $email->subject('Shopping');
                            $email->to($mail->email,'Name');
                        });
                
             
                return  redirect()->to($jsonResult['payUrl']);

        
        }

 }


   

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
       $dt = str_replace([',', ' '], '',  DonHang::find($id)->tong_tien);
       $ten = DonHang::find($id)->ten_nguoi_nhan;  
        $sdt = DonHang::find($id)->sdt;
       $diachi = DonHang::find($id)->dia_chi_nhan;
       $ghichu = DonHang::find($id)->ghi_chu;
   
   
        DoanhThu::create([
                'tongdoanhthu' => (int)$dt,   
        ]);

        DonDaDat::create([
            'ten_nguoi_nhan' => $ten,
            'sdt' => $sdt,
            'dia_chi_nhan' =>$diachi,
            'ghi_chu'=> $ghichu,
            'tong_tien'=>$dt,
        ]);

         $data = DonHang::find($id);
         $data->delete();
         return Redirect('/admin/donhang');
    }


    

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
  

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $data = DonHang::find($id);
        $data->delete();
        return Redirect('/admin/donhang');
    }
}
