package sonmt.banmaytinh.pac.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import sonmt.banmaytinh.pac.model.DanhSachMayTinhTimKiem;
import sonmt.banmaytinh.pac.model.DemBinhLuanPhanHoi;
import sonmt.banmaytinh.pac.model.TongChiTheoThang;
import sonmt.banmaytinh.pac.model.join.OrderBill;
import sonmt.banmaytinh.pac.repository.dienthoai.DanhSachDienThoaiTimKiem;

@Repository
public interface JoinQuery {

	List<DanhSachMayTinhTimKiem> TimKiemMayTinh(String tensanpham, String loai);
	
	List<DanhSachDienThoaiTimKiem> getTatCaDienThoai();
	List<DanhSachMayTinhTimKiem> getTatCaMayTinh();
	
	List<OrderBill> danhSachBills(int mahoadon);
	List<TongChiTheoThang> tongChiTheoThangs(int makh);
	List<TongChiTheoThang> doanhThuTheoNam(int nam);
	List<DemBinhLuanPhanHoi> binhLuanPhanHoi();
	
}
