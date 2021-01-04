package sonmt.banmaytinh.pac.repository.dienthoai;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import sonmt.banmaytinh.pac.model.dienthoai.Dohoadienthoai;

@Repository
public interface DoHoaDienThoaiRepository extends JpaRepository<Dohoadienthoai, Long> {

	@Query(value = "select * from dohoadienthoai where madohoa = \r\n" + 
			"(select madohoa from dienthoaichitiet where dienthoaichitiet.madienthoai = ?1)",nativeQuery = true)
	Dohoadienthoai getDoHoa(String madienthoai);
	
}
