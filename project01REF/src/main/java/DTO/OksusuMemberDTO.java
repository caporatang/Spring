package DTO;

public class OksusuMemberDTO {
	
	private String memberId; 
	private String memberPw; 
	private String memberName; 
	private String memberBusiness; 
	private String memberAddress; 
	private String memberTel;
	
	//
	public void setmemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getmemberId() {
		return memberId;
	}
	//
	public void setmemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getmemberPw() {
		return memberPw;
	}
	//
	public void setmemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getmemberName() {
		return memberName;
	}
	//
	public void setmemberBusinees(String memberBusinees) {
		this.memberBusiness = memberBusinees;
	}
	public String getmemberBusinees() {
		return memberBusiness;
	}
	//
	public void setmemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}
	public String getmemberAddress() {
		return memberAddress;
	}
	//
	public void setmemberTel(String memberTel) {
		this.memberTel = memberTel;
	}
	public String getmemberTel() {
		return memberTel;
	}
	@Override
	public String toString() {
		return "OksusuMemberDTO [memberId=" + memberId + ", memberPw=" + memberPw + ", memberName=" + memberName
				+ ", memberBusiness=" + memberBusiness + ", memberAddress=" + memberAddress + ", memberTel=" + memberTel
				+ "]";
	}
	
	

}
