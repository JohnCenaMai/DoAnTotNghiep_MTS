package sonmt.banmaytinh.pac.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import sonmt.banmaytinh.pac.model.Khachhang;
import sonmt.banmaytinh.pac.model.chatroom.Chat;
import sonmt.banmaytinh.pac.model.chatroom.Room;
import sonmt.banmaytinh.pac.repository.KhachHangRepository;
import sonmt.banmaytinh.pac.repository.KhachHang_VaiTroRepository;
import sonmt.banmaytinh.pac.repository.chatroom.RoomRepository;

@Controller
@RequestMapping(value = "/trangdangky")
public class DangKyController {

	@Autowired
	private KhachHangRepository khachHangRepository;
	
	@Autowired
	private KhachHang_VaiTroRepository khachHang_VaiTroRepository;
	
	@Autowired 
	private RoomRepository roomRepository;
	
	@RequestMapping(value = "")
	public String GetTrangDangKy()
	{
		return "TrangDangKy";
	}
	
	@RequestMapping(value = "/dangky")
	public String XuLyDangKy(@RequestParam String email,
			@RequestParam String hoten,
			@RequestParam String matkhau,
			@RequestParam String xacnhanmatkhau,
			@RequestParam String diachi,
			@RequestParam String sodienthoai,
			@RequestParam String ngaysinh,
			@RequestParam String vaitro,
			RedirectAttributes redirect)
	{
		//System.out.println(vaitro);
		//kiem tra dau vao
		//neu dau vao dung
		if(isValidEmail(email))
		{
			//System.out.println("Email hop le");
			//kiem tra dien thoai
			//neu dau vao dung
			if(isValidPhone(sodienthoai))
			{
				//System.out.println("So dien thoai hop le");
				//kiem tra email da co trong csdl chua
				Khachhang khachhang = khachHangRepository.findByUsername(email);
				if(khachhang == null)
				{
					//System.out.println("Chưa tồn tại trong cơ sở dữ liệu");
					//ma hoa mat khau
					if(matkhau.equals(xacnhanmatkhau))
					{
						BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
						matkhau = passwordEncoder.encode(matkhau);
						
						//insert vao csdl
						khachHangRepository.ThemKhachHang(email, hoten, matkhau, diachi, sodienthoai, ngaysinh, true, true, true, true);
						if(vaitro.equals("USER"))
						{							
							khachHang_VaiTroRepository.ThemThongTinKH_VT(khachHangRepository.LayMaKhachHang(email), 1);
							Date date = new Date();
							
							//SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
							//String ngaytao = formatter.format(date);  
							
							Room room = new Room();
							room.setRoom_id(khachHangRepository.LayMaKhachHang(email));
							room.setNgaytao(date);
							roomRepository.save(room);
						}
					}
					else {
						//System.out.println("Nhập lại mật khẩu");
						return "redirect:/trangdangky";
					}
				}
				else {
					//System.out.println("Đã tồn tại trong cơ sở dữ liệu");
					return "redirect:/trangdangky";
				}	
			}
			else {
				//System.out.println("So dien thoai k hop le");
				return "redirect:/trangdangky";
			}
		}
		else {
			redirect.addFlashAttribute("success","Email không hợp lệ!!!");
			return "redirect:/trangdangky";	
		}
		redirect.addFlashAttribute("success","Đăng ký thành công");
		return "redirect:/trangchu";
	}
	
	public boolean isValidEmail(String email) 
    { 
        String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\."+ 
                            "[a-zA-Z0-9_+&*-]+)*@" + 
                            "(?:[a-zA-Z0-9-]+\\.)+[a-z" + 
                            "A-Z]{2,7}$"; 
                              
        Pattern pat = Pattern.compile(emailRegex); 
        if (email == null) 
            return false; 
        return pat.matcher(email).matches(); 
    } 
	
	public boolean isValidPhone(String phone) 
	{ 
		if(phone.length() == 10)
		{
			if(phone.charAt(0) == '0')
			{
				if(phone.charAt(1) == '3' || phone.charAt(1) == '8' || phone.charAt(1) == '9')
				{
					System.out.println("Số điện thoại hợp lệ");
					return true;
				}
				else {
					System.out.println("Số điện thoại không hợp lệ");
					return false;
				}
			}
			else {
				System.out.println("Đầu số điện thoại không hợp lệ");
				return false;
			}
		}
		else {
			System.out.println("Độ dài không hợp lệ");
			return false;
		}
	} 
	
}
