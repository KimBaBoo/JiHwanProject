package controller;

public class ActionFactory {
	private ActionFactory() {}
	private static ActionFactory instance = new ActionFactory();
	public static ActionFactory getInstance() {
		return instance;
	}
	public Action getAction(String command) {

		Action action = null;
		
		switch(command) {
			case "community":
				action = new CommunityMainAction();
				break; 
			case "communityBoard":
				action = new CommunityBoardAction();
				break;
			case "showPostAction":
				action = new ShowPostAction();
				break;
			case "communitySearch":
				action = new CommunitySearchAction();
				break;
			case "postWrite":
				action = new PostWriteAction();
				break;
			case "pcCafe":
				action = new PcCafeAction();
				break;
			case "reserveSeat":
				action = new ReserveSeatAction();
				break;
			case "reservePay":
				action = new CafeReservePayAction();
				break;
			case "payment":
				action = new PaymentAction();
				break;
			case "inquiry":
				action = new InquiryAction();
				break;
			case "paymentSelect":
				action = new PaymentSelectAction();
				break;
			case "news":
				action = new NewsMainAction();
				break;
			case "newsIn":
				action = new NewsInAction();
				break;
		}
		return action;
	}
}
