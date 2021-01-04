package sonmt.banmaytinh.pac.repository.dienthoai;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import sonmt.banmaytinh.pac.model.dienthoai.Dienthoaihinhanh;

@Repository
public interface DienThoaiHinhAnhRepository extends JpaRepository<Dienthoaihinhanh, Long> {

	@Query(value = "select * from dienthoaihinhanh where madienthoai = ?1",nativeQuery = true)
	List<Dienthoaihinhanh> getDienThoaiHinhAnh(String madienthoai);
	
}
