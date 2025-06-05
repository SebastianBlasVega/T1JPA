package Modelo;

import java.math.BigDecimal;
import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Docente {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int iddoc;
private String nomdoc;
private String apedoc;
private String espdoc;
private BigDecimal suedoc;
private char gendoc;
private String cordoc;
private LocalDate fncdoc;
//get y sets
public int getIddoc() {
	return iddoc;
}
public void setIddoc(int iddoc) {
	this.iddoc = iddoc;
}
public String getNomdoc() {
	return nomdoc;
}
public void setNomdoc(String nomdoc) {
	this.nomdoc = nomdoc;
}
public String getApedoc() {
	return apedoc;
}
public void setApedoc(String apedoc) {
	this.apedoc = apedoc;
}
public String getEspdoc() {
	return espdoc;
}
public void setEspdoc(String espdoc) {
	this.espdoc = espdoc;
}
public BigDecimal getSuedoc() {
	return suedoc;
}
public void setSuedoc(BigDecimal suedoc) {
	this.suedoc = suedoc;
}
public char getGendoc() {
	return gendoc;
}
public void setGendoc(char gendoc) {
	this.gendoc = gendoc;
}
public String getCordoc() {
	return cordoc;
}
public void setCordoc(String cordoc) {
	this.cordoc = cordoc;
}
public LocalDate getFncdoc() {
	return fncdoc;
}
public void setFncdoc(LocalDate fncdoc) {
	this.fncdoc = fncdoc;
}

}
