package semi.DTO;

import java.sql.Date;

public class ReservationDTO {
		private int l_num;
		private Date l_dateIn;
		private Date l_dateOut;
		private int p_num;
		private int r_num;
		private int r_total;
		private int l_tipNum;
		private int yes;

		public int getP_num() {
			return p_num;
		}
		public void setP_num(int p_num) {
			this.p_num = p_num;
		}
		public Date getL_dateIn() {
			return l_dateIn;
		}
		public void setL_dateIn(Date l_dateIn) {
			this.l_dateIn = l_dateIn;
		}
		public Date getL_dateOut() {
			return l_dateOut;
		}
		public void setL_dateOut(Date l_dateOut) {
			this.l_dateOut = l_dateOut;
		}
		public int getYes() {
			return yes;
		}
		public void setYes(int yes) {
			this.yes = yes;
		}
		public int getL_tipNum() {
			return l_tipNum;
		}
		public void setL_tipNum(int l_tipNum) {
			this.l_tipNum = l_tipNum;
		}
		public int getR_total() {
			return r_total;
		}
		public void setR_total(int r_total) {
			this.r_total = r_total;
		}
		public int getL_num() {
			return l_num;
		}
		public void setL_num(int l_num) {
			this.l_num = l_num;
		}

		public int getR_num() {
			return r_num;
		}
		public void setR_num(int r_num) {
			this.r_num = r_num;
		}
	
		
}
