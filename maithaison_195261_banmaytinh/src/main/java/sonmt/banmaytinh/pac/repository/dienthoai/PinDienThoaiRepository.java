package sonmt.banmaytinh.pac.repository.dienthoai;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import sonmt.banmaytinh.pac.model.dienthoai.Pindienthoai;

@Repository
public interface PinDienThoaiRepository extends JpaRepository<Pindienthoai, Long> {

	@Query(value = "select * from pindienthoai where mapin = \r\n" + 
			"(select mapin from dienthoaichitiet where dienthoaichitiet.madienthoai = ?1)",nativeQuery = true)
	Pindienthoai getPin(String madienthoai);
	
}
