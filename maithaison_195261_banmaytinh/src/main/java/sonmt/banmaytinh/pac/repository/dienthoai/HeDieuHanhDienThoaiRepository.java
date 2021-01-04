package sonmt.banmaytinh.pac.repository.dienthoai;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import sonmt.banmaytinh.pac.model.Hedieuhanh;
import sonmt.banmaytinh.pac.model.dienthoai.Hedieuhanhdienthoai;

@Repository
public interface HeDieuHanhDienThoaiRepository extends JpaRepository<Hedieuhanhdienthoai, Long> {

	@Query(value = "select * from hedieuhanhdienthoai where phienbanhedieuhanh = \r\n" + 
			"(select phienbanhedieuhanh from dienthoaichitiet where dienthoaichitiet.madienthoai = ?1)",nativeQuery = true)
	Hedieuhanhdienthoai getHeDieuHanh(String madienthoai);
	
}
