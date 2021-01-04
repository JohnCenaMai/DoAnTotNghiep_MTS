package sonmt.banmaytinh.pac.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.client.ClientProtocolException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import sonmt.banmaytinh.pac.model.Binhluan;
import sonmt.banmaytinh.pac.model.ChiTietBinhLuan;
import sonmt.banmaytinh.pac.model.DanhSachMayTinhTimKiem;
import sonmt.banmaytinh.pac.model.Phanhoi;
import sonmt.banmaytinh.pac.model.google.GooglePojo;
import sonmt.banmaytinh.pac.repository.BanPhimRepository;
import sonmt.banmaytinh.pac.repository.BinhLuanRepository;
import sonmt.banmaytinh.pac.repository.BoNhoRepository;
import sonmt.banmaytinh.pac.repository.BoXuLyRepository;
import sonmt.banmaytinh.pac.repository.DoHoaRepository;
import sonmt.banmaytinh.pac.repository.HeDieuHanhRepository;
import sonmt.banmaytinh.pac.repository.HopThuRepository;
import sonmt.banmaytinh.pac.repository.LoaRepository;
import sonmt.banmaytinh.pac.repository.ManHinhRepository;
import sonmt.banmaytinh.pac.repository.MayTinhHinhAnhRepository;
import sonmt.banmaytinh.pac.repository.MayTinhRepository;
import sonmt.banmaytinh.pac.repository.PhanHoiRepository;
import sonmt.banmaytinh.pac.repository.PinRepository;
import sonmt.banmaytinh.pac.repository.RamRepository;
import sonmt.banmaytinh.pac.repository.dienthoai.BoNhoDienThoaiRepository;
import sonmt.banmaytinh.pac.repository.dienthoai.BoXuLyDienThoaiRepository;
import sonmt.banmaytinh.pac.repository.dienthoai.CameraDienThoaiRepository;
import sonmt.banmaytinh.pac.repository.dienthoai.ChatLieuDienThoaiRepository;
import sonmt.banmaytinh.pac.repository.dienthoai.DanhSachDienThoaiTimKiem;
import sonmt.banmaytinh.pac.repository.dienthoai.DienThoaiHinhAnhRepository;
import sonmt.banmaytinh.pac.repository.dienthoai.DienThoaiRepository;
import sonmt.banmaytinh.pac.repository.dienthoai.DoHoaDienThoaiRepository;
import sonmt.banmaytinh.pac.repository.dienthoai.HeDieuHanhDienThoaiRepository;
import sonmt.banmaytinh.pac.repository.dienthoai.ManHinhDienThoaiRepository;
import sonmt.banmaytinh.pac.repository.dienthoai.PinDienThoaiRepository;
import sonmt.banmaytinh.pac.repository.dienthoai.RamDienThoaiRepository;
import sonmt.banmaytinh.pac.service.JoinQueryService;

@Controller
public class MainController {
	
	@Autowired
	private AuthenticationManager authenticationManager;
	
	@Autowired
	private MayTinhRepository mayTinhRepository;
	
	@Autowired
	private MayTinhHinhAnhRepository mayTinhHinhAnhRepository;
	
	@Autowired
	private BoXuLyRepository boXuLyRepository;
	
	@Autowired
	private RamRepository ramRepository;
	
	@Autowired
	private ManHinhRepository manHinhRepository;
	
	@Autowired
	private DoHoaRepository doHoaRepository;
	
	@Autowired
	private BoNhoRepository boNhoRepository;
	
	@Autowired
	private LoaRepository loaRepository;
	
	@Autowired
	private BanPhimRepository banPhimRepository;
	
	@Autowired
	private PinRepository pinRepository;
	
	@Autowired 
	private HeDieuHanhRepository heDieuHanhRepository;
	
	/*dien thoai*/
	@Autowired
	private DienThoaiRepository dienThoaiRepository;
	
	@Autowired
	private DienThoaiHinhAnhRepository dienThoaiHinhAnhRepository;
	
	@Autowired
	private BoXuLyDienThoaiRepository boXuLyDienThoaiRepository;
	
	@Autowired
	private RamDienThoaiRepository ramDienThoaiRepository;
	
	@Autowired
	private ManHinhDienThoaiRepository manHinhDienThoaiRepository;
	
	@Autowired
	private DoHoaDienThoaiRepository doHoaDienThoaiRepository;
	
	@Autowired
	private BoNhoDienThoaiRepository boNhoDienThoaiRepository;
	
	@Autowired
	private PinDienThoaiRepository pinDienThoaiRepository;
	
	@Autowired 
	private HeDieuHanhDienThoaiRepository heDieuHanhDienThoaiRepository;
	
	@Autowired
	private ChatLieuDienThoaiRepository chatLieuDienThoaiRepository;
	
	@Autowired
	private CameraDienThoaiRepository cameraDienThoaiRepository;
	
	/*other*/
	@Autowired
	private JoinQueryService joinQueryService;
	
	@Autowired
	private BinhLuanRepository binhLuanRepository;
	
	@Autowired
	private PhanHoiRepository phanHoiRepository;
	
	@Autowired
	private HopThuRepository hopThuRepository;
	
	int ind = 0;
	
	@RequestMapping(value = "/trangdangnhap")
    public String GetTrangDangNhap() {
        return "TrangDangNhap";
	}
	
	@RequestMapping(value = "/trangchu")
	public String GetTrangChu(Model hotenkhachhang)
	{
		hotenkhachhang.addAttribute("hoten", SecurityContextHolder.getContext().getAuthentication().getName());
		//System.out.println(SecurityContextHolder.getContext().getAuthentication().getName());
		return "TrangChu";
	}
	
	@RequestMapping(value = "/trangchitietmaytinh/{masanpham}")
	public String GetChiTietMayTinh(@PathVariable String masanpham,
			Model chitietsanpham,
			Model chitiethinhanh,
			Model chitietboxuly,
			Model chitietram,
			Model chitietmanhinh,
			Model chitietdohoa,
			Model chitietbonho,
			Model chitietamthanh,
			Model chitietbanphim,
			Model chitietpin,
			Model hedieuhanh,
			Model binhluan,
			Model vaitro)
	{
		chitietsanpham.addAttribute("chitietsanpham", mayTinhRepository.TimKiemMayTinh(masanpham));
		
		chitiethinhanh.addAttribute("chitiethinhanh", mayTinhHinhAnhRepository.TimKiemMayTinhHinhAnh(masanpham));
		
		//tim kiem thong tin cpu
		chitietboxuly.addAttribute("chitietboxuly", boXuLyRepository.TimKiemBoXuLy(masanpham));
		
		chitietram.addAttribute("chitietram", ramRepository.TimKiemRam(masanpham));
		
		chitietmanhinh.addAttribute("chitietmanhinh", manHinhRepository.TimKiemManHinh(masanpham));
		
		chitietdohoa.addAttribute("chitietdohoa", doHoaRepository.TimKiemDoHoa(masanpham));
		
		chitietbonho.addAttribute("chitietbonho", boNhoRepository.TimKiemBoNho(masanpham));
		
		chitietamthanh.addAttribute("chitietamthanh", loaRepository.TimKiemLoa(masanpham));
		
		chitietbanphim.addAttribute("chitietbanphim", banPhimRepository.TimKiemBanPhim(masanpham));
		
		chitietpin.addAttribute("chitietpin", pinRepository.TimKiemPin(masanpham));
		
		hedieuhanh.addAttribute("chitiethdh", heDieuHanhRepository.TimKiemHeDieuHanh(masanpham));
		
		List<ChiTietBinhLuan> chiTietBinhLuans = new ArrayList<ChiTietBinhLuan>();
		
		List<Binhluan> danhsachbinhluan = binhLuanRepository.TimTatCaBinhLuan(masanpham);
		
		for (Binhluan binhluan2 : danhsachbinhluan) {
			List<Phanhoi> listPhanHoi = phanHoiRepository.PhanHoiTheoMaBinhLuan(binhluan2.getMabinhluan());
			ChiTietBinhLuan ctbl = new ChiTietBinhLuan();
			ctbl.setBinhluan(binhluan2);
			ctbl.setPhanhois(listPhanHoi);
			chiTietBinhLuans.add(ctbl);
		}
		
		binhluan.addAttribute("chitietbinhluan", chiTietBinhLuans);
		
		@SuppressWarnings("unchecked")
		List<SimpleGrantedAuthority> authorities = (List<SimpleGrantedAuthority>)SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		//System.out.println(authorities.get(0));
		vaitro.addAttribute("vaitro", authorities.get(0).toString());
		
		return "TrangChiTietMayTinh";
	}
	
	@RequestMapping(value = "/trangchitietdienthoai/{masanpham}")
	public String GetChiTietDienThoai(@PathVariable String masanpham,
			Model chitietsanpham,
			Model chitiethinhanh,
			Model chitietboxuly,
			Model chitietram,
			Model chitietmanhinh,
			Model chitietcamera,
			Model chitietchatlieu,
			Model chitietdohoa,
			Model chitietbonho,
			Model chitietpin,
			Model hedieuhanh,
			Model binhluan,
			Model vaitro)
	{
		chitietsanpham.addAttribute("chitietsanpham", dienThoaiRepository.getDienThoai(masanpham));
		
		chitiethinhanh.addAttribute("chitiethinhanh", dienThoaiHinhAnhRepository.getDienThoaiHinhAnh(masanpham));
		
		//tim kiem thong tin cpu
		chitietboxuly.addAttribute("chitietboxuly", boXuLyDienThoaiRepository.getBoXuLy(masanpham));
		
		chitietram.addAttribute("chitietram", ramDienThoaiRepository.getRam(masanpham));
		
		chitietmanhinh.addAttribute("chitietmanhinh", manHinhDienThoaiRepository.getManHinh(masanpham));
		
		chitietdohoa.addAttribute("chitietdohoa", doHoaDienThoaiRepository.getDoHoa(masanpham));
		
		chitietbonho.addAttribute("chitietbonho", boNhoDienThoaiRepository.getBoNho(masanpham));
		
		chitietcamera.addAttribute("chitietcamera", cameraDienThoaiRepository.getCamera(masanpham));
		
		chitietchatlieu.addAttribute("chitietchatlieu", chatLieuDienThoaiRepository.getChatlieu(masanpham));
		
		chitietpin.addAttribute("chitietpin", pinDienThoaiRepository.getPin(masanpham));
		
		hedieuhanh.addAttribute("chitiethdh", heDieuHanhDienThoaiRepository.getHeDieuHanh(masanpham));
		//
		List<ChiTietBinhLuan> chiTietBinhLuans = new ArrayList<ChiTietBinhLuan>();
		
		List<Binhluan> danhsachbinhluan = binhLuanRepository.TimTatCaBinhLuan(masanpham);
		
		for (Binhluan binhluan2 : danhsachbinhluan) {
			List<Phanhoi> listPhanHoi = phanHoiRepository.PhanHoiTheoMaBinhLuan(binhluan2.getMabinhluan());
			ChiTietBinhLuan ctbl = new ChiTietBinhLuan();
			ctbl.setBinhluan(binhluan2);
			ctbl.setPhanhois(listPhanHoi);
			chiTietBinhLuans.add(ctbl);
		}
		
		binhluan.addAttribute("chitietbinhluan", chiTietBinhLuans);
		
		@SuppressWarnings("unchecked")
		List<SimpleGrantedAuthority> authorities = (List<SimpleGrantedAuthority>)SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		//System.out.println(authorities.get(0));
		vaitro.addAttribute("vaitro", authorities.get(0).toString());
		
		return "TrangChiTietDienThoai";
	}
	
	//dang nhap
	@RequestMapping(value = "/dangnhap")
	public String XulyDangNhap(@RequestParam String email,@RequestParam String matkhau,HttpServletResponse response,RedirectAttributes redirect) throws Exception
	{
		//System.out.println(email + matkhau);
		/*final UserDetails userDetails = khachHangService
				.loadUserByUsername(email);
		final String token = jwtTokenUtil.generateToken(userDetails);
		Cookie cookie = new Cookie("makh"+userDetails.getUsername(), token);
		cookie.setMaxAge(5*60);
		response.addCookie(cookie);*/
		
		try {
			Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(email, matkhau));
			SecurityContextHolder.getContext().setAuthentication(authentication);
			List<SimpleGrantedAuthority> authorities = (List<SimpleGrantedAuthority>)SecurityContextHolder.getContext().getAuthentication().getAuthorities();
			
			//System.out.println(authorities.get(0));
			if(authorities.get(0).toString().equals("ROLE_ADMIN"))
			{
				return "redirect:/trangquantri/";
			}
		} catch (BadCredentialsException e) {
			// TODO: handle exception
		} catch (LockedException e) {
			// TODO: handle exception
			return "redirect:/trangdangnhap";
		} catch (DisabledException e) {
			// TODO: handle exception
			redirect.addFlashAttribute("success","There are not any account!!!");
			return "redirect:/trangdangnhap";
		}
		//return ResponseEntity.ok(new JwtResponse(token));
		return "redirect:/trangchu";
	}
		
	@RequestMapping(value = "/dangxuat")
	public String XuLyDangXuat(HttpServletRequest request,HttpServletResponse response,RedirectAttributes redirect,@RequestParam(required = false) String thongbao)
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
		    new SecurityContextLogoutHandler().logout(request, response, auth);
		    redirect.addFlashAttribute("success",thongbao);
		    return "redirect:/trangchu";
		}
		else {
			redirect.addFlashAttribute("success","Bạn chưa đăng nhập!!!");
			return "redirect:/trangchu";	
		}		
	}
	
	@RequestMapping(value = "/trangtimkiemsanpham")
	public String TrangTimKiemSanPham(@RequestParam(required = false) String tensanpham,
			Model danhsachsanpham)
	{
		List<DanhSachMayTinhTimKiem> listsp = new ArrayList<DanhSachMayTinhTimKiem>();
		listsp.addAll(joinQueryService.TimKiemMayTinh(tensanpham, "maytinh"));
		listsp.addAll(joinQueryService.TimKiemMayTinh(tensanpham, "dienthoai"));
		
		danhsachsanpham.addAttribute("danhsachsanpham", listsp);
		return "TrangTimKiemSanPham";
	}
	
	@RequestMapping(value = "/tranglaptop")
	public String trangLapTop(Model danhsachlaptop,
			Model hangmodel,
			Model giamodel,
			Model manhinhmodel,
			Model cpumodel,
			Model rammodel,
			Model ocungmodel,
			Model dohoamodel)
	{
		//danhsachsanpham.addAttribute("danhsachsanpham", joinQueryService.TimKiemMayTinh(tensanpham));
		danhsachlaptop.addAttribute("danhsachlaptop", joinQueryService.getTatCaMayTinh());
		hangmodel.addAttribute("tenhang", "tatca_maytinh");
		giamodel.addAttribute("mucgia", "tatca_gia");
		manhinhmodel.addAttribute("manhinh", "tatca_manhinh");
		cpumodel.addAttribute("cpu", "tatca_cpu");
		rammodel.addAttribute("ram", "tatca_ram");
		ocungmodel.addAttribute("ocung", "tatca_ocung");
		dohoamodel.addAttribute("dohoa", "tatca_dohoa");
		return "TrangLapTop";
	}
	
	@RequestMapping(value = "/locmaytinh")
	public String LocMayTinh(@RequestParam(required = false) String tenhang,
			@RequestParam(required = false) String mucgia,
			@RequestParam(required = false) String manhinh,
			@RequestParam(required = false) String cpu,
			@RequestParam(required = false) String ram,
			@RequestParam(required = false) String ocung,
			@RequestParam(required = false) String dohoa,
			Model danhsachlaptop,
			Model hangmodel,
			Model giamodel,
			Model manhinhmodel,
			Model cpumodel,
			Model rammodel,
			Model ocungmodel,
			Model dohoamodel)
	{
		boolean daloc = false;
		boolean daloc1 = false;
		//lay tat ca may tinh trong csdl
		List<DanhSachMayTinhTimKiem> tatCaMayTinh = joinQueryService.getTatCaMayTinh();
		List<DanhSachMayTinhTimKiem> tatCaMayTinhDaLoc = new ArrayList<DanhSachMayTinhTimKiem>();
		
		Iterator<DanhSachMayTinhTimKiem> iterator = null;
		
		if(!tenhang.equals("tatca_maytinh"))
		{
			daloc = true;	
			if(tatCaMayTinhDaLoc.size()==0)
			{
				//tatCaMayTinhDaLoc trong va chua loc
				if(!daloc1)
				{
					for (DanhSachMayTinhTimKiem e : tatCaMayTinh) {
						if(e.getTensanpham().contains(tenhang))
						{						
							tatCaMayTinhDaLoc.add(e);
						}
					}		
				}		
			}
			else {
				iterator = tatCaMayTinhDaLoc.iterator();					
				while (iterator.hasNext()) {
					DanhSachMayTinhTimKiem dSachMayTinhTimKiem = iterator.next();
					if(!dSachMayTinhTimKiem.getTensanpham().contains(tenhang))
					{				
						daloc = true;
						daloc1 = true;
						iterator.remove();
					}
				}
			}				
		}	
		else {
			daloc = false;
		}	
		
		//neu khong phai tat ca muc gia
		if(!mucgia.equals("tatca_gia"))
		{
			daloc = true;
			if(tatCaMayTinhDaLoc.size()==0)
			{
				if(!daloc1)
				{
					//neu muc gia < 435 USD
					if(mucgia.equals("_435"))
					{
						for (DanhSachMayTinhTimKiem e : tatCaMayTinh) {
							if(e.getGia() < 435)
							{
								
								tatCaMayTinhDaLoc.add(e);
							}
						}
					}
					else if (mucgia.equals("435_655")) {
						for (DanhSachMayTinhTimKiem e : tatCaMayTinh) {
							//System.out.println(e.getTensanpham().contains(tenhang));
							if(e.getGia() >= 435 && e.getGia() < 655)
							{
								
								tatCaMayTinhDaLoc.add(e);
							}
						}
					}
					else if (mucgia.equals("655_870")) {
						for (DanhSachMayTinhTimKiem e : tatCaMayTinh) {
							//System.out.println(e.getTensanpham().contains(tenhang));
							if(e.getGia() >= 655 && e.getGia() < 870)
							{
								
								tatCaMayTinhDaLoc.add(e);
							}
						}
					}
					else if (mucgia.equals("870_1087")) {
						for (DanhSachMayTinhTimKiem e : tatCaMayTinh) {
							//System.out.println(e.getTensanpham().contains(tenhang));
							if(e.getGia() >= 870 && e.getGia() < 1087)
							{
								
								tatCaMayTinhDaLoc.add(e);
							}
						}
					}
					else if (mucgia.equals("1087_")) {
						for (DanhSachMayTinhTimKiem e : tatCaMayTinh) {
							//System.out.println(e.getTensanpham().contains(tenhang));
							if(e.getGia() >= 1087)
							{
								
								tatCaMayTinhDaLoc.add(e);
							}
						}
					}	
				}
								
			}
			else {
				iterator = tatCaMayTinhDaLoc.iterator();
				//neu muc gia < 435 USD
				if(mucgia.equals("_435"))
				{
					while (iterator.hasNext()) {
						DanhSachMayTinhTimKiem dSachMayTinhTimKiem = iterator.next();
						if(dSachMayTinhTimKiem.getGia() >= 435)
						{
							
							daloc1 = true;
							iterator.remove();
						}
					}
				}
				else if (mucgia.equals("435_655")) {
					while (iterator.hasNext()) {
						DanhSachMayTinhTimKiem dSachMayTinhTimKiem = iterator.next();
						if(dSachMayTinhTimKiem.getGia() < 435 || dSachMayTinhTimKiem.getGia() >= 655)
						{
							
							daloc1 = true;
							iterator.remove();
						}
					}
				}
				else if (mucgia.equals("655_870")) {	
					while (iterator.hasNext()) {
						DanhSachMayTinhTimKiem dSachMayTinhTimKiem = iterator.next();
						if(dSachMayTinhTimKiem.getGia() < 655 || dSachMayTinhTimKiem.getGia() >= 870)
						{
							
							daloc1 = true;	
							iterator.remove();
						}
					}
				}
				else if (mucgia.equals("870_1087")) {
					while (iterator.hasNext()) {
						DanhSachMayTinhTimKiem dSachMayTinhTimKiem = iterator.next();
						if(dSachMayTinhTimKiem.getGia() < 870 || dSachMayTinhTimKiem.getGia() >= 1087)
						{
							
							daloc1 = true;
							iterator.remove();
						}
					}
				}
				else if (mucgia.equals("1087_")) {
					while (iterator.hasNext()) {
						DanhSachMayTinhTimKiem dSachMayTinhTimKiem = iterator.next();
						if(dSachMayTinhTimKiem.getGia() < 1087)
						{
							
							daloc1 = true;
							iterator.remove();
						}
					}
				}
				
			}		
		}	
		else {
			daloc = false;
		}
		
		//System.out.println(manhinh);
		if(!manhinh.equals("tatca_manhinh"))
		{
			daloc = true;
			if(tatCaMayTinhDaLoc.size()==0)
			{
				if(!daloc1)
				{
					for (DanhSachMayTinhTimKiem e : tatCaMayTinh) {
						if(e.getKichthuocmanhinh().contains(manhinh))
						{
							
							//System.out.println("Đã thêm");
							tatCaMayTinhDaLoc.add(e);
						}
					}	
				}
				
			}
			else {
				iterator = tatCaMayTinhDaLoc.iterator();
				while (iterator.hasNext()) {
					DanhSachMayTinhTimKiem dSachMayTinhTimKiem = iterator.next();
					if(!dSachMayTinhTimKiem.getKichthuocmanhinh().contains(manhinh))
					{
						
						daloc1 = true;
						iterator.remove();
					}
				}
			}
		}
		else {
			daloc = false;
		}
		
		if(!cpu.equals("tatca_cpu"))
		{
			daloc = true;
			if(tatCaMayTinhDaLoc.size()==0)
			{
				if(!daloc1)
				{
					for (DanhSachMayTinhTimKiem e : tatCaMayTinh) {
						if(e.getCongnghecpu().contains(cpu))
						{
							daloc = true;
							//System.out.println("Đã thêm");
							tatCaMayTinhDaLoc.add(e);
						}
					}	
				}
				
			}
			else {
				iterator = tatCaMayTinhDaLoc.iterator();
				while (iterator.hasNext()) {
					DanhSachMayTinhTimKiem dSachMayTinhTimKiem = iterator.next();
					if(!dSachMayTinhTimKiem.getCongnghecpu().contains(cpu))
					{
						daloc1 = true;
						
						iterator.remove();
					}
				}
			}
		}
		else {
			daloc = false;
		}
		
		if(!ram.equals("tatca_ram"))
		{
			daloc = true;
			if(tatCaMayTinhDaLoc.size()==0)
			{
				if(!daloc1)
				{
					for (DanhSachMayTinhTimKiem e : tatCaMayTinh) {
						if(e.getDungluongram().contains(ram))
						{
							daloc = true;
							//System.out.println("Đã thêm");
							tatCaMayTinhDaLoc.add(e);
						}
					}	
				}
				
			}
			else {
				iterator = tatCaMayTinhDaLoc.iterator();
				while (iterator.hasNext()) {
					DanhSachMayTinhTimKiem dSachMayTinhTimKiem = iterator.next();
					if(!dSachMayTinhTimKiem.getDungluongram().contains(ram))
					{
						daloc1 = true;
						iterator.remove();
					}
				}
			}
		}
		else {
			daloc = false;
		}
		
		if(!dohoa.equals("tatca_dohoa"))
		{
			daloc = true;
			if(tatCaMayTinhDaLoc.size()==0)
			{
				if(!daloc1)
				{
					for (DanhSachMayTinhTimKiem e : tatCaMayTinh) {
						if(e.getCardonboard().contains(dohoa))
						{
							daloc = true;
							//System.out.println("Đã thêm");
							tatCaMayTinhDaLoc.add(e);
						}
					}	
				}
				
			}
			else {
				iterator = tatCaMayTinhDaLoc.iterator();
				while (iterator.hasNext()) {
					DanhSachMayTinhTimKiem dSachMayTinhTimKiem = iterator.next();
					if(!dSachMayTinhTimKiem.getCardonboard().contains(dohoa))
					{
						daloc1 = true;
						iterator.remove();
					}
				}
			}
		}
		else {
			daloc = false;
		}
		
		if(!ocung.equals("tatca_ocung"))
		{
			daloc = true;
			if(tatCaMayTinhDaLoc.size()==0)
			{
				if(!daloc1)
				{
					for (DanhSachMayTinhTimKiem e : tatCaMayTinh) {
						if(e.getDungluongbonho().contains(ocung))
						{
							
							//System.out.println("Đã thêm");
							tatCaMayTinhDaLoc.add(e);
						}
					}	
				}
				
			}
			else {
				iterator = tatCaMayTinhDaLoc.iterator();
				while (iterator.hasNext()) {
					DanhSachMayTinhTimKiem dSachMayTinhTimKiem = iterator.next();
					if(!dSachMayTinhTimKiem.getDungluongbonho().contains(ocung))
					{
						daloc1 = true;
						iterator.remove();
					}
				}
			}
		}
		else {
			daloc = false;
		}
		
		if(tatCaMayTinhDaLoc.size() != 0)
		{
			danhsachlaptop.addAttribute("danhsachlaptop", tatCaMayTinhDaLoc);
		}
		else {
			if(!daloc && !daloc1)
			{
				danhsachlaptop.addAttribute("danhsachlaptop", tatCaMayTinh);		
			}
			else {
				danhsachlaptop.addAttribute("danhsachlaptop", tatCaMayTinhDaLoc);	
			}
		}
			
		hangmodel.addAttribute("tenhang", tenhang);
		giamodel.addAttribute("mucgia", mucgia);
		manhinhmodel.addAttribute("manhinh", manhinh);
		cpumodel.addAttribute("cpu", cpu);
		rammodel.addAttribute("ram", ram);
		ocungmodel.addAttribute("ocung", ocung);
		dohoamodel.addAttribute("dohoa", dohoa);
		
		return "TrangLapTop"; 
	}
	
	//trang dien thoai
	@RequestMapping(value = "/trangdienthoai")
	public String trangDienThoai(Model danhsachdienthoai,
			Model hangmodel,
			Model giamodel,
			Model manhinhmodel,
			Model pinmodel)
	{
		//danhsachsanpham.addAttribute("danhsachsanpham", joinQueryService.TimKiemMayTinh(tensanpham));
		danhsachdienthoai.addAttribute("danhsachdienthoai", joinQueryService.getTatCaDienThoai());
		hangmodel.addAttribute("tenhang", "tatca_dienthoai");
		giamodel.addAttribute("mucgia", "tatca_gia");
		manhinhmodel.addAttribute("manhinh", "tatca_manhinh");
		pinmodel.addAttribute("pin", "tatca_pin");
		
		return "TrangDienThoai";
	}
		
	@RequestMapping(value = "/locdienthoai")
	public String LocDienThoai(@RequestParam(required = false) String tenhang,
			@RequestParam(required = false) String mucgia,
			@RequestParam(required = false) String manhinh,
			@RequestParam(required = false) String pin,
			Model danhsachdienthoai,
			Model hangmodel,
			Model giamodel,
			Model manhinhmodel,
			Model pinmodel
			)
	{
		
		//lay tat ca may tinh trong csdl
		List<DanhSachDienThoaiTimKiem> tatCaDienThoai = joinQueryService.getTatCaDienThoai();
		
		Iterator<DanhSachDienThoaiTimKiem> iterator = null;
		
		if(!tenhang.equals("tatca_dienthoai"))
		{
			iterator = tatCaDienThoai.iterator();					
			while (iterator.hasNext()) {
				DanhSachDienThoaiTimKiem dSachDienThoaiTimKiem = iterator.next();
				if(!dSachDienThoaiTimKiem.getTensanpham().contains(tenhang))
				{				
					iterator.remove();
				}
			}
		}
		
		if(!mucgia.equals("tatca_gia"))
		{
			iterator = tatCaDienThoai.iterator();
			//neu muc gia < 435 USD
			if(mucgia.equals("_87"))
			{
				while (iterator.hasNext()) {
					DanhSachDienThoaiTimKiem dSachDienThoaiTimKiem = iterator.next();
					if(dSachDienThoaiTimKiem.getGia() >= 87)
					{
						iterator.remove();
					}
				}
			}
			else if (mucgia.equals("87_174")) {
				while (iterator.hasNext()) {
					DanhSachDienThoaiTimKiem dSachDienThoaiTimKiem = iterator.next();
					if(dSachDienThoaiTimKiem.getGia() < 87 || dSachDienThoaiTimKiem.getGia() >= 174)
					{
						iterator.remove();
					}
				}
			}
			else if (mucgia.equals("174_305")) {	
				while (iterator.hasNext()) {
					DanhSachDienThoaiTimKiem dSachDienThoaiTimKiem = iterator.next();
					if(dSachDienThoaiTimKiem.getGia() < 174 || dSachDienThoaiTimKiem.getGia() >= 305)
					{
							
						iterator.remove();
					}
				}
			}
			else if (mucgia.equals("305_565")) {
				while (iterator.hasNext()) {
					DanhSachDienThoaiTimKiem dSachDienThoaiTimKiem = iterator.next();
					if(dSachDienThoaiTimKiem.getGia() < 305 || dSachDienThoaiTimKiem.getGia() >= 565)
					{
						
						iterator.remove();
					}
				}
			}
			else if (mucgia.equals("565_")) {
				while (iterator.hasNext()) {
					DanhSachDienThoaiTimKiem dSachDienThoaiTimKiem = iterator.next();
					if(dSachDienThoaiTimKiem.getGia() < 565)
					{
						
						iterator.remove();
					}
				}
			}
			
		}
		
		if(!pin.equals("tatca_pin"))
		{
			iterator = tatCaDienThoai.iterator();
			//neu muc gia < 435 USD
			if(pin.equals("_3000"))
			{
				while (iterator.hasNext()) {
					DanhSachDienThoaiTimKiem dSachDienThoaiTimKiem = iterator.next();
					if(dSachDienThoaiTimKiem.getDungluongpin() >= 3000)
					{
						
						iterator.remove();
					}
				}
			}
			else if (pin.equals("3000_4000")) {
				while (iterator.hasNext()) {
					DanhSachDienThoaiTimKiem dSachDienThoaiTimKiem = iterator.next();
					if(dSachDienThoaiTimKiem.getDungluongpin() < 3000 || dSachDienThoaiTimKiem.getDungluongpin() >= 4000)
					{
						
						iterator.remove();
					}
				}
			}
			else if (pin.equals("4000_")) {	
				while (iterator.hasNext()) {
					DanhSachDienThoaiTimKiem dSachDienThoaiTimKiem = iterator.next();
					if(dSachDienThoaiTimKiem.getDungluongpin() < 4000)
					{
							
						iterator.remove();
					}
				}
			}
			
		}
		
		danhsachdienthoai.addAttribute("danhsachdienthoai", tatCaDienThoai);	
		hangmodel.addAttribute("tenhang", tenhang);
		giamodel.addAttribute("mucgia", mucgia);
		manhinhmodel.addAttribute("manhinh", manhinh);
		pinmodel.addAttribute("pin", pin);
		
		return "TrangDienThoai"; 
	}
	
	// dang nhap voi google, facebook
	@Autowired
	private sonmt.banmaytinh.pac.model.google.GoogleUtils googleUtils;
	
	@Autowired
	private sonmt.banmaytinh.pac.model.facebook.RestFB restFb;
	
	@RequestMapping("/login-facebook")
	public String loginFacebook(HttpServletRequest request) throws ClientProtocolException, IOException {
	    String code = request.getParameter("code");
	    
	    if (code == null || code.isEmpty()) {
	      return "redirect:/login?facebook=error";
	    }
	    String accessToken = restFb.getToken(code);
	    
	    com.restfb.types.User user = restFb.getUserInfo(accessToken);
	    UserDetails userDetail = restFb.buildUser(user);
	    UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(userDetail, null,
	        userDetail.getAuthorities());
	    authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
	    SecurityContextHolder.getContext().setAuthentication(authentication);
	    return "redirect:/trangchu";
	}
	  
	@RequestMapping("/login-google")
	public String loginGoogle(HttpServletRequest request) throws ClientProtocolException, IOException {
	    String code = request.getParameter("code");
	    System.out.println(code);
	    if (code == null || code.isEmpty()) {
	      return "redirect:/login?google=error";
	    }
	    String accessToken = googleUtils.getToken(code);
	    
	    GooglePojo googlePojo = googleUtils.getUserInfo(accessToken);
	    UserDetails userDetail = googleUtils.buildUser(googlePojo);
	    
	    UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(userDetail, null,
	        userDetail.getAuthorities());
	    
	    authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
	    SecurityContextHolder.getContext().setAuthentication(authentication);
	    
	    return "redirect:/trangchu";
	}
	  
	@RequestMapping(value = "/hoidaptuvanvien")
	public String HoiDapTuVanVien(@RequestParam String email,
			@RequestParam String chude,
			@RequestParam String noidung)
	{
		boolean trangthai = false;
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");  
		String ngaygui = formatter.format(date);  
		
		hopThuRepository.GuiHopThu(email, chude, noidung, ngaygui, trangthai);
		
		return "redirect:/trangchu";
	}
	
}
