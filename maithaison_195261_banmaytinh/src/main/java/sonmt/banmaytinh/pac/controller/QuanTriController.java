package sonmt.banmaytinh.pac.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import sonmt.banmaytinh.pac.mailtext.MyConstants;
import sonmt.banmaytinh.pac.model.Banphim;
import sonmt.banmaytinh.pac.model.Bonho;
import sonmt.banmaytinh.pac.model.Boxuly;
import sonmt.banmaytinh.pac.model.Chatlieu;
import sonmt.banmaytinh.pac.model.Chitiethoadon;
import sonmt.banmaytinh.pac.model.Dohoa;
import sonmt.banmaytinh.pac.model.FileUploadUtil;
import sonmt.banmaytinh.pac.model.Hedieuhanh;
import sonmt.banmaytinh.pac.model.Loa;
import sonmt.banmaytinh.pac.model.Manhinh;
import sonmt.banmaytinh.pac.model.Maytinh;
import sonmt.banmaytinh.pac.model.Maytinhchitiet;
import sonmt.banmaytinh.pac.model.Maytinhhinhanh;
import sonmt.banmaytinh.pac.model.Ram;
import sonmt.banmaytinh.pac.model.TongChiTheoThang;
import sonmt.banmaytinh.pac.repository.BanPhimRepository;
import sonmt.banmaytinh.pac.repository.BinhLuanRepository;
import sonmt.banmaytinh.pac.repository.BoNhoRepository;
import sonmt.banmaytinh.pac.repository.BoXuLyRepository;
import sonmt.banmaytinh.pac.repository.ChatLieuRepository;
import sonmt.banmaytinh.pac.repository.ChiTietHoaDonRepository;
import sonmt.banmaytinh.pac.repository.DoHoaRepository;
import sonmt.banmaytinh.pac.repository.HeDieuHanhRepository;
import sonmt.banmaytinh.pac.repository.HoaDonRepository;
import sonmt.banmaytinh.pac.repository.KhachHangRepository;
import sonmt.banmaytinh.pac.repository.LoaRepository;
import sonmt.banmaytinh.pac.repository.ManHinhRepository;
import sonmt.banmaytinh.pac.repository.MayTinhChiTietRepository;
import sonmt.banmaytinh.pac.repository.MayTinhHinhAnhRepository;
import sonmt.banmaytinh.pac.repository.MayTinhRepository;
import sonmt.banmaytinh.pac.repository.RamRepository;
import sonmt.banmaytinh.pac.service.JoinQueryService;
import sonmt.banmaytinh.pac.service.MayTinhService;

import java.io.IOException;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/trangquantri")
public class QuanTriController {

	@Autowired
	private KhachHangRepository khachHangRepository;
	
	@Autowired
	private HoaDonRepository hoaDonRepository;
	
	@Autowired
	private ChiTietHoaDonRepository chiTietHoaDonRepository;
	
	@Autowired
	private MayTinhRepository mayTinhRepository;
	
	@Autowired
	private MayTinhHinhAnhRepository mayTinhHinhAnhRepository;
	
	@Autowired
	private MayTinhChiTietRepository mayTinhChiTietRepository;
	
	@Autowired 
	private BoXuLyRepository boXuLyRepository;
	
	@Autowired
	private RamRepository ramRepository;
	
	@Autowired
	private DoHoaRepository doHoaRepository;
	
	@Autowired
	private ManHinhRepository manHinhRepository;
	
	@Autowired
	private LoaRepository loaRepository;
	
	@Autowired
	private HeDieuHanhRepository heDieuHanhRepository;
	
	@Autowired
	private ChatLieuRepository chatLieuRepository;
	
	@Autowired
	private BanPhimRepository banPhimRepository;
	
	@Autowired
	private BoNhoRepository boNhoRepository;
	
	@Autowired
	private BinhLuanRepository binhLuanRepository;
	
	@Autowired
	private JoinQueryService joinQueryService;
	
	@Autowired
    private JavaMailSender emailSender;
	
	@Autowired
	private MayTinhService mayTinhService;

	Maytinhchitiet maytinhchitiet = new Maytinhchitiet();
	
	boolean xacnhanmoi = false;
	
	@RequestMapping(value = "/")
	public String GetTrangQuanTri(Model thongtinquantrivien,
			Model danhsachmaytinh,
			Model danhsachkhachhang,
			Model danhsachhoadon,
			Model danhsachbinhluan,
			Model danhsachhopthu)
	{
		//thong tin quan tri vien
		int maquantrivien = Integer.parseInt(SecurityContextHolder.getContext().getAuthentication().getName());
		thongtinquantrivien.addAttribute("ttqtv", khachHangRepository.findByMakh(maquantrivien));
		
		return "/quantri/TrangChuQuanTri";
	}
	
	@RequestMapping(value = "/trangquanlymaytinh")
	public String GetTrangQuanLyMayTinh(Model danhsachmaytinh)
	{
		danhsachmaytinh.addAttribute("danhsachmaytinh", mayTinhRepository.LayDanhSachMayTinh());
		return findPaginated(1, "mamaytinh", danhsachmaytinh);	 
	}
	
	@GetMapping("/danhsachmaytinh/{pageNo}")
	public String findPaginated(@PathVariable (value = "pageNo") int pageNo, 
			@RequestParam("sortField") String sortField,
			Model model) {
		
		int pageSize = 7;
		
		Page<Maytinh> page = mayTinhService.findPaginated(pageNo, pageSize, sortField);
		List<Maytinh> listMaytinhs = page.getContent();
		
		model.addAttribute("currentPage", pageNo);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("totalItems", page.getTotalElements());
		
		model.addAttribute("sortField", sortField);
		
		model.addAttribute("danhsachmaytinh", listMaytinhs);
		return "/quantri/TrangQuanLyMayTinh";
	}
	
	@RequestMapping(value = "/trangthemmoimaytinh")
	public String GetTrangThemMoiMayTinh(Model model)
	{		
		model.addAttribute("mamaytinh1", mayTinhRepository.LayMaMayTinhCuoiCung());
		return "/quantri/TrangThemMoiMayTinh";
	}
	
	@RequestMapping(value = "/savemaytinh")
	public String saveMaytinh(@RequestParam String mamaytinh,	
			@RequestParam(required = false) String tensanpham,
			@RequestParam(required = false) String xuatxu,
			@RequestParam(required = false) byte thoigianbaohanh,
			@RequestParam(required = false) float chieurong,
			@RequestParam(required = false) float chieucao,
			@RequestParam(required = false) float chieusau,
			@RequestParam(required = false) String namramat,
			@RequestParam(required = false) float trongluong,
			@RequestParam(required = false) int soluong,
			@RequestParam(required = false) int gia,
			@RequestParam("hinhanh") MultipartFile multipartFile ) throws IOException
	{		
		//System.out.println(multipartFile.getOriginalFilename());
		
		Maytinh maytinh = new Maytinh();
		
		maytinh.setMamaytinh(mamaytinh);
		maytinh.setTensanpham(tensanpham);
		maytinh.setXuatxu(xuatxu);
		maytinh.setThoigianbaohanh(thoigianbaohanh);
		maytinh.setChieurong(chieurong);
		maytinh.setChieucao(chieucao);
		maytinh.setChieusau(chieusau);
		maytinh.setNamramat(namramat);
		maytinh.setTrongluong(trongluong);
		maytinh.setSoluong(soluong);
		maytinh.setGia(gia);
		
		//may tinh chi tiet
		Maytinhhinhanh maytinhhinhanh = new Maytinhhinhanh();
		maytinhhinhanh.setMamaytinh(mamaytinh);
		
		String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
		if(tensanpham.contains("Acer"))
		{
			//luu vao thu muc
			String uploadDir = "./src/main/resources/static/Máy tính/ACER/" + tensanpham;
			String pathString = uploadDir + "/" + fileName;
			
			//luu vao csdl
			String uploadCsdl = "/Máy tính/ACER/" + tensanpham;
			String pathString1 = uploadCsdl + "/" + fileName;
			maytinh.setHinhanh(pathString1);
			maytinhhinhanh.setHinhanh(pathString1);
						
			FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
			//luu vao co so du lieu
			mayTinhRepository.save(maytinh);
			mayTinhHinhAnhRepository.save(maytinhhinhanh);
		}
		else if (tensanpham.contains("Dell")) {
			//luu vao thu muc
			String uploadDir = "./src/main/resources/static/Máy tính/DELL/" + tensanpham;
			String pathString = uploadDir + "/" + fileName;
			
			//luu vao csdl
			String uploadCsdl = "/Máy tính/DELL/" + tensanpham;
			String pathString1 = uploadCsdl + "/" + fileName;
			maytinh.setHinhanh(pathString1);
			maytinhhinhanh.setHinhanh(pathString1);
						
			FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
			//luu vao co so du lieu
			mayTinhRepository.save(maytinh);
			mayTinhHinhAnhRepository.save(maytinhhinhanh);
		}
		else if (tensanpham.contains("HP")) {
			//luu vao thu muc
			String uploadDir = "./src/main/resources/static/Máy tính/HP/" + tensanpham;
			String pathString = uploadDir + "/" + fileName;
			
			//luu vao csdl
			String uploadCsdl = "/Máy tính/HP/" + tensanpham;
			String pathString1 = uploadCsdl + "/" + fileName;
			maytinh.setHinhanh(pathString1);
			maytinhhinhanh.setHinhanh(pathString1);
						
			FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
			//luu vao co so du lieu
			mayTinhRepository.save(maytinh);
			mayTinhHinhAnhRepository.save(maytinhhinhanh);
		}
		else if (tensanpham.contains("Asus")) {
			//luu vao thu muc
			String uploadDir = "./src/main/resources/static/Máy tính/ASUS/" + tensanpham;
			String pathString = uploadDir + "/" + fileName;
			
			//luu vao csdl
			String uploadCsdl = "/Máy tính/ASUS/" + tensanpham;
			String pathString1 = uploadCsdl + "/" + fileName;
			maytinh.setHinhanh(pathString1);
			maytinhhinhanh.setHinhanh(pathString1);
						
			FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
			//luu vao co so du lieu
			mayTinhRepository.save(maytinh);
			mayTinhHinhAnhRepository.save(maytinhhinhanh);
		}
		else if (tensanpham.contains("Lenovo")) {
			//luu vao thu muc
			String uploadDir = "./src/main/resources/static/Máy tính/LENOVO/" + tensanpham;
			String pathString = uploadDir + "/" + fileName;
			
			//luu vao csdl
			String uploadCsdl = "/Máy tính/LENOVO/" + tensanpham;
			String pathString1 = uploadCsdl + "/" + fileName;
			maytinh.setHinhanh(pathString1);
			maytinhhinhanh.setHinhanh(pathString1);
						
			FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
			//luu vao co so du lieu
			mayTinhRepository.save(maytinh);
			mayTinhHinhAnhRepository.save(maytinhhinhanh);
		}
	
		maytinhchitiet.setMamaytinh(mamaytinh);
		return "redirect:/trangquantri/trangthemmoiboxuly";
	}
	
	@RequestMapping(value = "/trangthemmoiboxuly")
	public String GetTrangThemMoiBoXuLy(Model model)
	{		
		model.addAttribute("macpu1", boXuLyRepository.LayMaBoXuLyCuoiCung());
		model.addAttribute("danhsachcpu", boXuLyRepository.findAll());
		return "/quantri/TrangThemMoiBoXuLy";
	}
	
	@RequestMapping(value = "/saveboxuly")
	public String saveBoxuly(@RequestParam String macpu,
			@RequestParam String congnghecpu,
			@RequestParam String loaicpu,
			@RequestParam String hangcpu,
			@RequestParam float tocdo,
			@RequestParam float tocdotoida,
			@RequestParam int bonhodem,
			@RequestParam float tocdobus,
			@RequestParam int soluong,
			@RequestParam int soloi)
	{
		Boxuly boxuly = new Boxuly();
		boxuly.setMacpu(macpu);
		boxuly.setCongnghecpu(congnghecpu);
		boxuly.setLoaicpu(loaicpu);
		boxuly.setHangcpu(hangcpu);
		boxuly.setTocdo(tocdo);
		boxuly.setTocdotoida(tocdotoida);
		boxuly.setBonhodem(bonhodem);
		boxuly.setTocdobus(tocdobus);	
		boxuly.setSoluong(soluong);
		boxuly.setSoloi(soloi);
		
		//maytinhchitiet.setMacpu(boxuly.getMacpu());
		boXuLyRepository.save(boxuly);
		maytinhchitiet.setMacpu(macpu);
		return "redirect:/trangquantri/trangthemmoiboxuly";
	}
	
	@RequestMapping(value = "/trangthemmoiram")
	public String GetTrangThemMoiRam(Model model)
	{		
		model.addAttribute("maram1", ramRepository.LayMaRamCuoiCung());
		model.addAttribute("danhsachram", ramRepository.findAll());
		
		return "/quantri/TrangThemMoiRam";
	}
	
	@RequestMapping(value = "/saveram")
	public String saveRam(@RequestParam String maram,
			@RequestParam byte dungluong,
			@RequestParam String loairam,
			@RequestParam float tocdoram,
			@RequestParam byte sokhecamroi,
			@RequestParam byte sokheramconlai,
			@RequestParam byte soramonboard,
			@RequestParam byte soramtoida)
	{		
		Ram ram = new Ram();
		ram.setMaram(maram);
		ram.setDungluong(dungluong);
		ram.setLoairam(loairam);
		ram.setTocdoram(tocdoram);
		ram.setSokhecamroi(sokhecamroi);
		ram.setSokheramconlai(sokheramconlai);
		ram.setSoramonboard(soramonboard);
		ram.setSoramtoida(soramtoida);
		
		ramRepository.save(ram);
		
		maytinhchitiet.setMaram(maram);
		
		return "redirect:/trangquantri/trangthemmoidohoa";
	}
	
	@RequestMapping(value = "/trangthemmoidohoa")
	public String GetTrangThemMoiDoHoa(Model model)
	{		
		model.addAttribute("madohoa1", doHoaRepository.LayMaDoHoaCuoiCung());
		model.addAttribute("danhsachdohoa", doHoaRepository.findAll());
		return "/quantri/TrangThemMoiDoHoa";
	}
	
	@RequestMapping(value = "/savedohoa")
	public String saveDoHoa(@RequestParam String madohoa,
			@RequestParam String hang,
			@RequestParam float xungnhip,
			@RequestParam float xungnhiptoida,
			@RequestParam String model,
			@RequestParam String cardonboard)
	{		
		Dohoa dohoa = new Dohoa();
		
		dohoa.setMadohoa(madohoa);
		dohoa.setHang(hang);
		dohoa.setXungnhip(xungnhip);
		dohoa.setXungnhiptoida(xungnhiptoida);
		dohoa.setModel(model);
		dohoa.setCardonboard(cardonboard);
		
		doHoaRepository.save(dohoa);
		
		maytinhchitiet.setMadohoa(madohoa);
		
		return "redirect:/trangquantri/trangthemmoimanhinh";
	}
	
	@RequestMapping(value = "/trangthemmoimanhinh")
	public String GetTrangThemMoiManHinh(Model model)
	{		
		model.addAttribute("mamanhinh1", manHinhRepository.LayMaManHinhCuoiCung());
		model.addAttribute("danhsachmanhinh", manHinhRepository.findAll());
		return "/quantri/TrangThemMoiManHinh";
	}
	
	@RequestMapping(value = "/savemanhinh")
	public String saveManHinh(@RequestParam String mamanhinh,
			@RequestParam String loaicamung,
			@RequestParam String manhinhcamung,
			@RequestParam String dotuongphan,
			@RequestParam String tylemanhinh,
			@RequestParam String dophumau,
			@RequestParam String congnghe,
			@RequestParam String dosang,
			@RequestParam String dophangiai,
			@RequestParam byte tansoquet,
			@RequestParam String loaimanhinh,
			@RequestParam String kichthuocmanhinh)
	{		
		Manhinh manhinh = new Manhinh();
		
		manhinh.setMamanhinh(mamanhinh);
		manhinh.setLoaicamung(loaicamung);
		manhinh.setManhinhcamung(manhinhcamung);
		manhinh.setDotuongphan(dotuongphan);
		manhinh.setTylemanhinh(tylemanhinh);
		
		manhinh.setDophumau(dophumau);
		manhinh.setCongnghe(congnghe);
		manhinh.setDosang(dosang);
		manhinh.setDophangiai(dophangiai);
		manhinh.setTansoquet(tansoquet);
		
		manhinh.setLoaimanhinh(loaimanhinh);
		manhinh.setKichthuocmanhinh(kichthuocmanhinh);
		
		manHinhRepository.save(manhinh);
		
		maytinhchitiet.setMamanhinh(mamanhinh);
		
		return "redirect:/trangquantri/trangthemmoiloa";
	}
	
	@RequestMapping(value = "/trangthemmoiloa")
	public String GetTrangThemMoiLoa(Model model)
	{		
		model.addAttribute("maloa1", loaRepository.LayMaLoaCuoiCung());
		model.addAttribute("danhsachloa", loaRepository.findAll());
		return "/quantri/TrangThemMoiLoa";
	}
	
	@RequestMapping(value = "/saveloa")
	public String saveLoa(@RequestParam String maloa,
			@RequestParam byte soloa,
			@RequestParam String congngheamthanh)
	{		
		Loa loa = new Loa();
		loa.setMaloa(maloa);
		loa.setSoloa(soloa);
		loa.setCongngheamthanh(congngheamthanh);
		
		loaRepository.save(loa);
		
		maytinhchitiet.setMaloa(maloa);
		
		return "redirect:/trangquantri/trangthemmoihedieuhanh";
	}
	
	@RequestMapping(value = "/trangthemmoihedieuhanh")
	public String GetTrangThemMoiHeDieuHanh(Model model)
	{		
		model.addAttribute("danhsachhdh", heDieuHanhRepository.findAll());
		return "/quantri/TrangThemMoiHeDieuHanh";
	}
	
	@RequestMapping(value = "/savehedieuhanh")
	public String saveHDH(@RequestParam String phienban,
			@RequestParam String ten,
			@RequestParam String kieu)
	{		
		Hedieuhanh hedieuhanh = new Hedieuhanh();
		hedieuhanh.setPhienbanhedieuhanh(phienban);
		hedieuhanh.setTen(ten);
		hedieuhanh.setKieu(kieu);
		
		heDieuHanhRepository.save(hedieuhanh);
		
		maytinhchitiet.setPhienbanhedieuhanh(phienban);
		
		return "redirect:/trangquantri/trangthemmoichatlieu";
	}
	
	@RequestMapping(value = "/trangthemmoichatlieu")
	public String GetTrangThemMoiChatLieu(Model model)
	{		
		model.addAttribute("machatlieu1", chatLieuRepository.LayMaChatLieuCuoiCung());
		model.addAttribute("danhsachchatlieu", chatLieuRepository.findAll());
		return "/quantri/TrangThemMoiChatLieu";
	}
	
	@RequestMapping(value = "/savechatlieu")
	public String saveChatlieu(@RequestParam String machatlieu,
			@RequestParam String chatlieumatbenngoaicung,
			@RequestParam String chatlieukhungmanhinh,
			@RequestParam String chatlieumatbanphim,
			@RequestParam String chatlieumatlung)
	{		
		Chatlieu chatlieu = new Chatlieu();
		
		chatlieu.setMachatlieu(machatlieu);
		chatlieu.setChatlieumatbenngoaicung(chatlieumatbenngoaicung);
		chatlieu.setChatlieukhungmanhinh(chatlieukhungmanhinh);
		chatlieu.setChatlieumatbanphim(chatlieumatbanphim);
		chatlieu.setChatlieumatlung(chatlieumatlung);
		
		chatLieuRepository.save(chatlieu);
		
		maytinhchitiet.setMachatlieu(machatlieu);
		
		return "redirect:/trangquantri/trangthemmoibanphim";
	}
	
	@RequestMapping(value = "/trangthemmoibanphim")
	public String GetTrangThemMoiBanPhim(Model model)
	{		
		model.addAttribute("mabanphim1", banPhimRepository.LayMaBanPhimCuoiCung());
		model.addAttribute("danhsachbanphim", banPhimRepository.findAll());
		return "/quantri/TrangThemMoiBanPhim";
	}
	
	@RequestMapping(value = "/savebanphim")
	public String saveBanPhim(@RequestParam String mabanphim,
			@RequestParam String kieubanphim,
			@RequestParam String banphimso,
			@RequestParam String loaidenbanphim,
			@RequestParam String maudenled,
			@RequestParam String congnghedenbanphim,
			@RequestParam String touchpad)
	{		
		Banphim banphim = new Banphim();
		
		banphim.setMabanphim(mabanphim);
		banphim.setKieubanphim(kieubanphim);
		banphim.setBanphimso(banphimso);
		banphim.setLoaidenbanphim(loaidenbanphim);
		banphim.setMaudenled(maudenled);
		banphim.setCongnghedenbanphim(congnghedenbanphim);
		banphim.setTouchpad(touchpad);
		
		banPhimRepository.save(banphim);
		
		maytinhchitiet.setMabanphim(mabanphim);
		
		return "redirect:/trangquantri/trangthemmoibonho";
	}
	
	@RequestMapping(value = "/trangthemmoibonho")
	public String GetTrangThemMoiBoNho(Model model)
	{		
		model.addAttribute("mabonho1", boNhoRepository.LayMaBoNhoCuoiCung());
		model.addAttribute("danhsachbonho", boNhoRepository.findAll());
		return "/quantri/TrangThemMoiBoNho";
	}
	
	@RequestMapping(value = "/savebonho")
	public String saveBoNho(@RequestParam String mabonho,
			@RequestParam String kieu,
			@RequestParam String dungluong,
			@RequestParam String tocdodocghi,
			@RequestParam String sokhecam)
	{		
		Bonho bonho = new Bonho();
		bonho.setMabonho(mabonho);
		bonho.setKieu(kieu);
		bonho.setDungluong(dungluong);
		bonho.setTocdodocghi(tocdodocghi);
		bonho.setSokhecam(sokhecam);
		
		boNhoRepository.save(bonho);
		
		maytinhchitiet.setMabonho(mabonho);
		mayTinhChiTietRepository.save(maytinhchitiet);
		
		return "redirect:/trangquantri/trangquanlymaytinh";
	}
	
	@RequestMapping(value = "/trangquanlykhachhang/{makh}")
	public String GetTrangQuanLyKhachHang(@PathVariable int makh,
			Model ngaythang,
			Model thongtinkhachhang,
			Model sodondattrongthang,
			Model sosanphammuatrongthang,
			Model soluottuongtacdanhgia,
			Model tongtienchiratrongthang,
			Model tongtienchitheothang)
	{
		thongtinkhachhang.addAttribute("chitietkhachhang", khachHangRepository.findByMakh(makh));
		
		Date date = new Date();
		LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
		int thang = localDate.getMonthValue();
		
		ngaythang.addAttribute("thang", thang);
		
		sodondattrongthang.addAttribute("sodondattrongthang", khachHangRepository.DemSoHoaDonTrongThang(makh, thang));
		
		sosanphammuatrongthang.addAttribute("sosanphammuatrongthang", khachHangRepository.DemSoLuongSanPhamDaMuaTrongThang(makh, thang));
		
		soluottuongtacdanhgia.addAttribute("soluottuongtacdanhgia", khachHangRepository.DemSoBinhLuanTuongTac(makh));
		
		tongtienchiratrongthang.addAttribute("tongtienchiratrongthang", khachHangRepository.TongTienChiTrongThang(makh, thang));
		
		Map<Integer, Long> bieudo = new HashMap<Integer, Long>();
		
		for (TongChiTheoThang tongChiTheoThang : joinQueryService.tongChiTheoThangs(makh)) {
			//System.out.println("Tháng: " + tongChiTheoThang.getThang() + ",Tổng chi: " + tongChiTheoThang.getTongchi());
			bieudo.put(tongChiTheoThang.getThang(), tongChiTheoThang.getTongchi());
		}
		
		if(!bieudo.containsKey(1))
		{
			bieudo.put(1, (long) 0);
		}
		
		if(!bieudo.containsKey(2))
		{
			bieudo.put(2, (long) 0);
		}
		
		if(!bieudo.containsKey(3))
		{
			bieudo.put(3, (long) 0);
		}
		
		if(!bieudo.containsKey(4))
		{
			bieudo.put(4, (long) 0);
		}
		
		if(!bieudo.containsKey(5))
		{
			bieudo.put(5, (long) 0);
		}
		
		if(!bieudo.containsKey(6))
		{
			bieudo.put(6, (long) 0);
		}
		
		if(!bieudo.containsKey(7))
		{
			bieudo.put(7, (long) 0);
		}
		
		if(!bieudo.containsKey(8))
		{
			bieudo.put(8, (long) 0);
		}
		
		if(!bieudo.containsKey(9))
		{
			bieudo.put(9, (long) 0);
		}
		
		if(!bieudo.containsKey(10))
		{
			bieudo.put(10, (long) 0);
		}
		
		if(!bieudo.containsKey(11))
		{
			bieudo.put(11, (long) 0);
		}
		
		if(!bieudo.containsKey(12))
		{
			bieudo.put(12, (long) 0);
		}
		
		tongtienchitheothang.addAttribute("tongtienchitheothang", bieudo);
		
		return "/quantri/TrangQuanLyKhachHang";
	}
	
	@RequestMapping(value = "/trangchitiethoadon/{mahoadon}")
	public String GetTrangChiTietHoaDon(@RequestParam(required = false,defaultValue = "2020") String nam,
			@PathVariable int mahoadon,
			Model mahoadonmodel,
			Model ThongTinKhachHang,
			Model ThongTinSanPham,
			Model doanhthutheonam)
	{
		mahoadonmodel.addAttribute("mahoadon", mahoadon);
		
		ThongTinKhachHang.addAttribute("thongtinkhachhang", khachHangRepository.findByMakh(hoaDonRepository.LayMaKhachHang(mahoadon)));
		
		Map<Maytinh, Integer> thongtinsanpham = new HashMap<Maytinh, Integer>();
		
		List<Chitiethoadon> chitiethoadons = chiTietHoaDonRepository.TimTatCaSanPhamCuaHoaDon(mahoadon);
		
		for (Chitiethoadon chitiethoadon : chitiethoadons) {
			Maytinh mt = mayTinhRepository.TimKiemMayTinh(chitiethoadon.getMasanpham());
			thongtinsanpham.put(mt, chitiethoadon.getSoluongmua());
		}
		
		ThongTinSanPham.addAttribute("thongtinsanpham", thongtinsanpham);
		
		Map<Integer, Long> bieudo = new HashMap<Integer, Long>();
		
		for (TongChiTheoThang tongChiTheoThang : joinQueryService.doanhThuTheoNam(Integer.parseInt(nam))) {
			//System.out.println("Tháng: " + tongChiTheoThang.getThang() + ",Tổng chi: " + tongChiTheoThang.getTongchi());
			bieudo.put(tongChiTheoThang.getThang(), tongChiTheoThang.getTongchi());
		}
		
		if(!bieudo.containsKey(1))
		{
			bieudo.put(1, (long) 0);
		}
		
		if(!bieudo.containsKey(2))
		{
			bieudo.put(2, (long) 0);
		}
		
		if(!bieudo.containsKey(3))
		{
			bieudo.put(3, (long) 0);
		}
		
		if(!bieudo.containsKey(4))
		{
			bieudo.put(4, (long) 0);
		}
		
		if(!bieudo.containsKey(5))
		{
			bieudo.put(5, (long) 0);
		}
		
		if(!bieudo.containsKey(6))
		{
			bieudo.put(6, (long) 0);
		}
		
		if(!bieudo.containsKey(7))
		{
			bieudo.put(7, (long) 0);
		}
		
		if(!bieudo.containsKey(8))
		{
			bieudo.put(8, (long) 0);
		}
		
		if(!bieudo.containsKey(9))
		{
			bieudo.put(9, (long) 0);
		}
		
		if(!bieudo.containsKey(10))
		{
			bieudo.put(10, (long) 0);
		}
		
		if(!bieudo.containsKey(11))
		{
			bieudo.put(11, (long) 0);
		}
		
		if(!bieudo.containsKey(12))
		{
			bieudo.put(12, (long) 0);
		}
		
		doanhthutheonam.addAttribute("doanhthutheonam", bieudo);
		
		return "/quantri/TrangChiTietHoaDon";
	}
	
	@RequestMapping(value = "/chophepanbinhluan/{masanpham}/{mabinhluan}")
	public String ChoPhepAnBinhLuan(@PathVariable String masanpham,
			@PathVariable int mabinhluan)
	{
		binhLuanRepository.ChoPhepAnComment(true, mabinhluan);
		return "redirect:/trangchitietsanpham/" + masanpham;
	}
	
	@RequestMapping(value = "/trangsoanthu")
	public String GetTrangSoanThu(@RequestParam String emailkhachhang,
			@RequestParam String emailadmin,
			@RequestParam String chude,
			@RequestParam String noidung,
			Model emailkh,Model emailad,Model cd,Model nd)
	{
		emailkh.addAttribute("emailkh", emailkhachhang);
		emailad.addAttribute("emailad", emailadmin);	
		cd.addAttribute("chude", chude);
		nd.addAttribute("noidung", noidung);
		return "/quantri/TrangSoanThu";
	}
	
	@RequestMapping(value = "/guithuquaemail")
	public String GuiThuQuaEmail(@RequestParam String emailkh,
			@RequestParam String emailqtv,
			@RequestParam String matkhauemail,
			@RequestParam String chude,
			@RequestParam String noidungtraloi)
	{
		// Create a Simple MailMessage.
        SimpleMailMessage message = new SimpleMailMessage();
         
        MyConstants.FRIEND_EMAIL = emailkh;
        MyConstants.MY_EMAIL = emailqtv;
        MyConstants.MY_PASSWORD = matkhauemail;
        
        message.setTo(MyConstants.FRIEND_EMAIL);
        message.setSubject(chude);
        message.setText(noidungtraloi);
 
        // Send Message!
        this.emailSender.send(message);
 
		return "redirect:/trangquantri/";
	}

	
}
