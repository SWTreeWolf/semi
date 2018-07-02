package semi.DTO;

public class ReserveViewpageDTO {
	private int thisP; //지금페이지
	private int totalW=3;//페이지의 총게시글 수
	private int firstW; //처음 게시글
	private int lastW;  //끝 게시글
	private int blockC=3; //블록갯수
	private int blockF; //블록시작
	private int blockL; //블록끝
	private int total; //게시글의 수
	private int totalP; //총페이지 수
	
	public ReserveViewpageDTO(int total,int thisP){
		this.total=total;
		this.thisP=thisP;
		totalP=total/totalW+(total%totalW==0?0:1);
		if(thisP>total)thisP=total;
		firstW=(thisP-1)*totalW+1;
		lastW=firstW+totalW-1;
		blockF= (int)((thisP-1)/blockC)*blockC+1;
		blockL=blockF+blockC-1;
		if(totalP<blockL)blockL=totalP;
		
	}

	public int getThisP() {
		return thisP;
	}

	public void setThisP(int thisP) {
		this.thisP = thisP;
	}

	public int getTotalW() {
		return totalW;
	}

	public void setTotalW(int totalW) {
		this.totalW = totalW;
	}

	public int getFirstW() {
		return firstW;
	}

	public void setFirstW(int firstW) {
		this.firstW = firstW;
	}

	public int getLastW() {
		return lastW;
	}

	public void setLastW(int lastW) {
		this.lastW = lastW;
	}

	public int getBlockC() {
		return blockC;
	}

	public void setBlockC(int blockC) {
		this.blockC = blockC;
	}

	public int getBlockF() {
		return blockF;
	}

	public void setBlockF(int blockF) {
		this.blockF = blockF;
	}

	public int getBlockL() {
		return blockL;
	}

	public void setBlockL(int blockL) {
		this.blockL = blockL;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getTotalP() {
		return totalP;
	}

	public void setTotalP(int totalP) {
		this.totalP = totalP;
	}
	
	
	
	
}
