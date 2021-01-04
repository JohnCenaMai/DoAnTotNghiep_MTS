package sonmt.banmaytinh.pac.service;

import org.springframework.data.domain.Page;

import sonmt.banmaytinh.pac.model.Maytinh;

public interface MayTinhService {

	Page<Maytinh> findPaginated(int pageNo, int pageSize, String sortField);
	
}
