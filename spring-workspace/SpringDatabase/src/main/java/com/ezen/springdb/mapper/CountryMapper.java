package com.ezen.springdb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.ezen.springdb.dto.CountryDTO;
import com.ezen.springdb.dto.FruitDTO;

public interface CountryMapper {

	@Select("SELECT * FROM countries")
	List<CountryDTO> getAll();


}
