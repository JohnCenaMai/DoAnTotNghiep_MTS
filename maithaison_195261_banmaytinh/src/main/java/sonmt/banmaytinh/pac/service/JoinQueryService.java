package sonmt.banmaytinh.pac.service;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sonmt.banmaytinh.pac.model.DanhSachMayTinhTimKiem;
import sonmt.banmaytinh.pac.model.DemBinhLuanPhanHoi;
import sonmt.banmaytinh.pac.model.TongChiTheoThang;
import sonmt.banmaytinh.pac.model.chatroom.Khachhang_messages;
import sonmt.banmaytinh.pac.model.chatroom.Room_content;
import sonmt.banmaytinh.pac.model.join.OrderBill;
import sonmt.banmaytinh.pac.repository.JoinQuery;
import sonmt.banmaytinh.pac.repository.dienthoai.DanhSachDienThoaiTimKiem;

@Service
public class JoinQueryService implements JoinQuery {

	@Autowired
    EntityManagerFactory emf;
	
	@Override
	public List<DanhSachMayTinhTimKiem> TimKiemMayTinh(String tensanpham, String loai) {
		// TODO Auto-generated method stub
		EntityManager em = emf.createEntityManager();
        //em.getTransaction().begin( );

		Query query = null;
		if(loai.equals("maytinh"))
		{
			query = em.createQuery("Select"+ " mt.mamaytinh, mt.tensanpham,mt.gia," + 
	        	"bxl.loaicpu,dh.hang,mh.kichthuocmanhinh," + 
	        	"bn.dungluong,ra.dungluong,mt.trongluong,mt.hinhanh" + 
	        	" from Maytinh mt inner join Maytinhchitiet mtct" + 
	        	" on mt.mamaytinh = mtct.mamaytinh inner join Boxuly bxl" + 
	        	" on mtct.macpu = bxl.macpu inner join Dohoa dh" + 
	        	" on mtct.madohoa = dh.madohoa inner join Manhinh mh" + 
	        	" on mtct.mamanhinh = mh.mamanhinh inner join Bonho bn" + 
	        	" on mtct.mabonho = bn.mabonho inner join Ram ra" + 
	        	" on mtct.maram = ra.maram where mt.tensanpham like '%" + tensanpham +"%'");		
		}
		else if (loai.equals("dienthoai")) {
			query = em.createQuery("Select"+ " dt.madienthoai, dt.tensanpham,dt.gia," + 
		        "bxl.loai,dh.tengpu,mh.kichthuoc," + 
		        "bn.dungluongbonho,ra.dungluongram,dt.trongluong,dt.hinhanh" + 
		        " from Dienthoai dt inner join Dienthoaichitiet dtct" + 
		        " on dt.madienthoai = dtct.madienthoai inner join Boxulydienthoai bxl" + 
		        " on dtct.macpu = bxl.macpu inner join Dohoadienthoai dh" + 
		        " on dtct.madohoa = dh.madohoa inner join Manhinhdienthoai mh" + 
		        " on dtct.mamanhinh = mh.mamanhinh inner join Bonhodienthoai bn" + 
		        " on dtct.mabonho = bn.mabonho inner join Ramdienthoai ra" + 
		        " on dtct.maram = ra.maram where dt.tensanpham like '%" + tensanpham +"%'");	
		}
       
        @SuppressWarnings("unchecked")
        List<Object[]> list =(List<Object[]>)query.getResultList();
        //System.out.println("Student Name :");
        
        List<DanhSachMayTinhTimKiem> list2 = new ArrayList<DanhSachMayTinhTimKiem>();
        
        for (Object[] objects : list) {
        	String masanpham = (String) objects[0];
			String tensanpham1 = (String) objects[1];
			int gia = (int) objects[2];
			String loaicpu = (String) objects[3];
			String hang = (String) objects[4];
			String kichthuocmanhinh = (String)objects[5];
			String dungluongbonho = (String)objects[6];
			byte dlram = (byte) objects[7];
			String dungluongram = String.valueOf(dlram);
			float trongluong = (float)objects[8];
			String hinhanh = (String)objects[9];
			
			DanhSachMayTinhTimKiem danhSachMayTinhTimKiem = new DanhSachMayTinhTimKiem(masanpham, 
					tensanpham1, gia, loaicpu, hang, kichthuocmanhinh, dungluongbonho, dungluongram, trongluong, hinhanh);
			list2.add(danhSachMayTinhTimKiem);
		}
        em.close();
        return list2;
	}

	@Override
	public List<OrderBill> danhSachBills(int mahoadon) {
		// TODO Auto-generated method stub
		EntityManager em = emf.createEntityManager();
		
		Query query = em.createQuery("select" + " mt.tensanpham,mt.gia,cthd.soluongmua \r\n" + 
				" from Chitiethoadon cthd inner join Maytinh mt \r\n" + 
				" on cthd.masanpham = mt.mamaytinh\r\n" + 
				" where cthd.mahoadon = " + mahoadon);
		
		Query query1 = em.createQuery("select" + " dt.tensanpham,dt.gia,cthd.soluongmua \r\n" + 
				" from Chitiethoadon cthd inner join Dienthoai dt \r\n" + 
				" on cthd.masanpham = dt.madienthoai\r\n" + 
				" where cthd.mahoadon = " + mahoadon);
		
		@SuppressWarnings("unchecked")
		List<Object[]> list =(List<Object[]>)query.getResultList();
		List<OrderBill> orderBills = new ArrayList<OrderBill>();
		
		for (Object[] objects : list) {
			String tensanpham = (String) objects[0];
			int gia = (int) objects[1];
			int soluong = (int)objects[2];
			
			OrderBill orderBill = new OrderBill(tensanpham, gia, soluong);
			orderBills.add(orderBill);
		}
		
		@SuppressWarnings("unchecked")
		List<Object[]> list1 =(List<Object[]>)query1.getResultList();
		//List<OrderBill> orderBills = new ArrayList<OrderBill>();
		
		for (Object[] objects : list1) {
			String tensanpham = (String) objects[0];
			int gia = (int) objects[1];
			int soluong = (int)objects[2];
			
			OrderBill orderBill = new OrderBill(tensanpham, gia, soluong);
			orderBills.add(orderBill);
		}
		
		em.close();
		return orderBills;
	}

	@Override
	public List<TongChiTheoThang> tongChiTheoThangs(int makh) {
		// TODO Auto-generated method stub
		EntityManager em = emf.createEntityManager();
		
		Query query = em.createQuery("select month(hd.ngaydathang) as thang,sum(cthd.soluongmua*mt.gia) as tongchi\r\n" + 
				"from Chitiethoadon cthd inner join Hoadon hd\r\n" + 
				"on cthd.mahoadon = hd.mahoadon inner join Maytinh mt \r\n" + 
				"on cthd.masanpham = mt.mamaytinh where hd.makh = " + makh + "\r\n" + 
				"group by month(hd.ngaydathang)");
		
		@SuppressWarnings("unchecked")
		List<Object[]> list =(List<Object[]>)query.getResultList();
		List<TongChiTheoThang> tongChiTheoThangs = new ArrayList<TongChiTheoThang>();
		
		for (Object[] objects : list) {
			int thang = (int) objects[0];
			long tongchi = (long) objects[1];
			
			TongChiTheoThang tongChiTheoThang = new TongChiTheoThang(thang, tongchi);
			tongChiTheoThangs.add(tongChiTheoThang);
		}
		
		em.close();
		return tongChiTheoThangs;
	}

	@Override
	public List<TongChiTheoThang> doanhThuTheoNam(int nam) {
		// TODO Auto-generated method stub
		EntityManager em = emf.createEntityManager();
		
		Query query = em.createQuery("select month(hd.ngaydathang) as thang,sum(cthd.soluongmua*mt.gia) as tongchi\r\n" + 
				"from Chitiethoadon cthd inner join Hoadon hd\r\n" + 
				"on cthd.mahoadon = hd.mahoadon inner join Maytinh mt \r\n" + 
				"on cthd.masanpham = mt.mamaytinh\r\n" + 
				"where year(hd.ngaydathang) = " + nam + "\r\n" + 
				"group by month(hd.ngaydathang)");
		
		@SuppressWarnings("unchecked")
		List<Object[]> list =(List<Object[]>)query.getResultList();
		List<TongChiTheoThang> tongChiTheoThangs = new ArrayList<TongChiTheoThang>();
		
		for (Object[] objects : list) {
			int thang = (int) objects[0];
			long tongchi = (long) objects[1];
			
			TongChiTheoThang tongChiTheoThang = new TongChiTheoThang(thang, tongchi);
			tongChiTheoThangs.add(tongChiTheoThang);
		}
		
		em.close();
		return tongChiTheoThangs;
	}

	@Override
	public List<DemBinhLuanPhanHoi> binhLuanPhanHoi() {
		// TODO Auto-generated method stub
		EntityManager em = emf.createEntityManager();
		
		/*Query query = em.createQuery("select bl.masanpham,count(distinct bl.mabinhluan),count(ph.maphanhoi) \r\n" + 
				"from Binhluan bl full join Phanhoi ph\r\n" + 
				"on bl.mabinhluan = ph.mabinhluan\r\n" + 
				"group by bl.masanpham");*/
		
		Query query2 = em.createNativeQuery("select binhluan.masanpham,COUNT(DISTINCT binhluan.mabinhluan),COUNT(phanhoi.maphanhoi) \r\n" + 
				"from binhluan LEFT JOIN phanhoi\r\n" + 
				"on binhluan.mabinhluan = phanhoi.mabinhluan \r\n" + 
				"GROUP BY binhluan.masanpham \r\n" + 
				"UNION \r\n" + 
				"select binhluan.masanpham,COUNT(DISTINCT binhluan.mabinhluan),COUNT(phanhoi.maphanhoi) \r\n" + 
				"from binhluan RIGHT JOIN phanhoi \r\n" + 
				"on binhluan.mabinhluan = phanhoi.mabinhluan \r\n" + 
				"GROUP BY binhluan.masanpham");
		
		@SuppressWarnings("unchecked")
		List<Object[]> list =(List<Object[]>)query2.getResultList();
		List<DemBinhLuanPhanHoi> demBinhLuanPhanHois = new ArrayList<DemBinhLuanPhanHoi>();
		
		for (Object[] objects : list) {
			String masanpham = (String) objects[0];
			BigInteger sobinhluan = (BigInteger) objects[1];
			BigInteger sophanhoi = (BigInteger) objects[2];
			
			DemBinhLuanPhanHoi demBinhLuanPhanHoi = new DemBinhLuanPhanHoi(masanpham, sobinhluan, sophanhoi);
			demBinhLuanPhanHois.add(demBinhLuanPhanHoi);
		}
		
		em.close();
		return demBinhLuanPhanHois;
	}

	@Override
	public List<DanhSachMayTinhTimKiem> getTatCaMayTinh() {
		// TODO Auto-generated method stub
		EntityManager em = emf.createEntityManager();
        //em.getTransaction().begin( );

        Query query = em.createQuery("Select"+ " mt.mamaytinh,mt.tensanpham,mt.gia," + 
        		"bxl.congnghecpu,dh.cardonboard,mh.kichthuocmanhinh," + 
        		"bn.dungluong,ra.dungluong,mt.trongluong,mt.hinhanh" + 
        		" from Maytinh mt inner join Maytinhchitiet mtct" + 
        		" on mt.mamaytinh = mtct.mamaytinh inner join Boxuly bxl" + 
        		" on mtct.macpu = bxl.macpu inner join Dohoa dh" + 
        		" on mtct.madohoa = dh.madohoa inner join Manhinh mh" + 
        		" on mtct.mamanhinh = mh.mamanhinh inner join Bonho bn" + 
        		" on mtct.mabonho = bn.mabonho inner join Ram ra" + 
        		" on mtct.maram = ra.maram");
       
        @SuppressWarnings("unchecked")
        List<Object[]> list =(List<Object[]>)query.getResultList();
        //System.out.println("Student Name :");
        
        List<DanhSachMayTinhTimKiem> list2 = new ArrayList<DanhSachMayTinhTimKiem>();
        
        for (Object[] objects : list) {
        	String masanpham = (String) objects[0];
			String tensanpham1 = (String) objects[1];
			int gia = (int) objects[2];
			String congnghecpu = (String) objects[3];
			String cardonboard = (String) objects[4];
			String kichthuocmanhinh = (String)objects[5];
			String dungluongbonho = (String)objects[6];
			byte dlram = (byte) objects[7];
			String dungluongram = String.valueOf(dlram);
			float trongluong = (float)objects[8];
			String hinhanh = (String)objects[9];
			
			DanhSachMayTinhTimKiem danhSachMayTinhTimKiem = new DanhSachMayTinhTimKiem(masanpham, 
					tensanpham1, gia, congnghecpu, cardonboard, kichthuocmanhinh, dungluongbonho, dungluongram, trongluong, hinhanh);
			list2.add(danhSachMayTinhTimKiem);
		}
        //System.out.println("kich thuoc: " + list2.size());
        em.close();
        return list2;
	}

	@Override
	public List<DanhSachDienThoaiTimKiem> getTatCaDienThoai() {
		// TODO Auto-generated method stub
		EntityManager em = emf.createEntityManager();
        //em.getTransaction().begin( );

        Query query = em.createQuery("Select"+ " dt.madienthoai,dt.tensanpham,dt.gia," + 
        		"mh.kichthuoc,pin.dungluongpin," + 
        		"dt.hinhanh" + 
        		" from Dienthoai dt inner join Dienthoaichitiet dtct" + 
        		" on dt.madienthoai = dtct.madienthoai inner join Manhinhdienthoai mh" + 
        		" on dtct.mamanhinh = mh.mamanhinh inner join Pindienthoai pin" + 
        		" on dtct.mapin = pin.mapin");
       
        @SuppressWarnings("unchecked")
        List<Object[]> list =(List<Object[]>)query.getResultList();
        
        List<DanhSachDienThoaiTimKiem> list2 = new ArrayList<DanhSachDienThoaiTimKiem>();
        
        for (Object[] objects : list) {
        	String masanpham = (String) objects[0];
			String tensanpham1 = (String) objects[1];
			int gia = (int) objects[2];
			String kichthuocmanhinh = (String)objects[3];
			int dungluongpin = (int)objects[4];
			String hinhanh = (String)objects[5];
			
			DanhSachDienThoaiTimKiem danhSachDienThoaiTimKiem = new DanhSachDienThoaiTimKiem(masanpham, 
					tensanpham1, gia, kichthuocmanhinh, dungluongpin, hinhanh);
			list2.add(danhSachDienThoaiTimKiem);
		}
        //System.out.println("kich thuoc: " + list2.size());
        em.close();
        return list2;
	}	

	@Override
	public List<Khachhang_messages> khachhang_messages() {
		// TODO Auto-generated method stub
		EntityManager em = emf.createEntityManager();
		
		Query query = em.createQuery("Select" + " kh.makh,kh.tenkhachhang,ct.noidung,ct.ngaygui\r\n" + 
				"from Khachhang kh inner join Khachhang_vaitro kh_vt \r\n" + 
				"on kh.makh = kh_vt.makh\r\n" + 
				"inner join Chat ct on kh.makh = ct.from_makh\r\n" + 
				"where ct.read_or_not_read = 0 and kh_vt.id_vaitro = 1 GROUP BY ct.from_makh ORDER BY ct.ngaygui ASC");
		
		@SuppressWarnings("unchecked")
        List<Object[]> list =(List<Object[]>)query.getResultList();
        
        List<Khachhang_messages> list2 = new ArrayList<Khachhang_messages>();
		
        for (Object[] objects : list) {
        	int makh = (int) objects[0];
			String tenkh = (String) objects[1];
			String noidung = (String) objects[2];
			Date ngaygui = (Date) objects[3];
			
			Khachhang_messages khachhang_messages = new Khachhang_messages(makh, 
					tenkh, noidung, ngaygui);
			list2.add(khachhang_messages);
		}
        
        em.close();
		
		return list2;
	}

	@Override
	public List<Room_content> room_contents(int makh) {
		// TODO Auto-generated method stub
		EntityManager em = emf.createEntityManager();
		
		Query query = em.createNativeQuery("SELECT chat.room_id,chat.noidung,chat.ngaygui,khachhang_vaitro.id_vaitro\r\n" + 
				"FROM chat INNER JOIN khachhang_vaitro \r\n" + 
				"ON chat.room_id = khachhang_vaitro.makh\r\n" + 
				"WHERE chat.room_id = " + makh);
		
		@SuppressWarnings("unchecked")
        List<Object[]> list =(List<Object[]>)query.getResultList();
        
        List<Room_content> list2 = new ArrayList<Room_content>();
		
        for (Object[] objects : list) {
        	int room_id = (int) objects[0];
			String noidung = (String) objects[1];
			Date ngaygui = (Date) objects[2];
			int vaitro = (int) objects[3];
			
			Room_content room_content = new Room_content(room_id, 
					noidung, ngaygui, vaitro);
			list2.add(room_content);
		}
        
        em.close();
		
		return list2;
	}
	
}
