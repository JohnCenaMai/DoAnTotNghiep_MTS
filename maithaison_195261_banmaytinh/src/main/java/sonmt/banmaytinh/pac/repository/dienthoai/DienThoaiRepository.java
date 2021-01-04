package sonmt.banmaytinh.pac.repository.dienthoai;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import sonmt.banmaytinh.pac.model.dienthoai.Dienthoai;

@Repository
public interface DienThoaiRepository extends JpaRepository<Dienthoai, Long> {

	@Query(value = "select * from dienthoai where madienthoai = ?1",nativeQuery = true)
	Dienthoai getDienThoai(String madienthoai);
	
}
