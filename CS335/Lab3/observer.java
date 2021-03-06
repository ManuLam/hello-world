//Commentary.java
import java.util.ArrayList;
import java.util.List;

public interface Commentary {

	public void setDesc(String desc);
}
//CommentaryObject.java                                                                               000664  001750  001750  00000001647 13244037035 015511  0                                                                                                    ustar 00haowu                           haowu                           000000  000000

//import java.util.List;

public class CommentaryObject implements Subject,Commentary{

	private final List<Observer>observers;
	private String desc;
	private final String subjectDetails;

	public CommentaryObject(List<Observer>observers,String subjectDetails){
		this.observers = observers;
		this.subjectDetails = subjectDetails;
	}
	@Override
	public void subscribeObserver(Observer observer) {
		observers.add(observer);
	}

	@Override
	public void unSubscribeObserver(Observer observer) {
		int index = observers.indexOf(observer);
		observers.remove(index);

	}

	@Override
	public void notifyObservers() {
		System.out.println();
		for(Observer observer : observers){
			observer.update(desc);
		}

	}

	@Override
	public void setDesc(String desc) {
		this.desc = desc;
		notifyObservers();
	}
	@Override
	public String subjectDetails() {
		return subjectDetails;
	}



}
//Observer.java

public interface Observer {

	public void update(String desc);
	public void subscribe();
	public void unSubscribe();
}
//SMSUsers.java                                                                                       000664  001750  001750  00000001720 13244037047 013723  0                                                                                                    ustar 00haowu                           haowu                           000000  000000

public class SMSUsers implements Observer{

	private final Subject subject;
	private String desc;
	private String userInfo;

	public SMSUsers(Subject subject,String userInfo){
		if(subject==null){
			throw new IllegalArgumentException("No Publisher found.");
		}
		this.subject = subject;
		this.userInfo = userInfo;
	}

	@Override
	public void update(String desc) {
		this.desc = desc;
		display();
	}


	private void display(){
		System.out.println("["+userInfo+"]: "+desc);
	}

	@Override
	public void subscribe() {
		System.out.println("Subscribing "+userInfo+" to "+subject.subjectDetails()+" ...");
		this.subject.subscribeObserver(this);
		System.out.println("Subscribed successfully.");
	}

	@Override
	public void unSubscribe() {
		System.out.println("Unsubscribing "+userInfo+" to "+subject.subjectDetails()+" ...");
		this.subject.unSubscribeObserver(this);
		System.out.println("Unsubscribed successfully.");
	}

}
//Subject.java

public interface Subject {

	public void subscribeObserver(Observer observer);
	public void unSubscribeObserver(Observer observer);
	public void notifyObservers();
	public String subjectDetails();
}
//                                                                                                                                                                                                               TestObserver.java                                                                                   000664  001750  001750  00000001755 13244037057 014677  0

public class TestObserver {

	public static void main(String[] args) {
		Subject subject = new CommentaryObject(new ArrayList<Observer>(), "Soccer Match [2014AUG24]");
		Observer observer = new SMSUsers(subject, "Adam Warner [New York]");
		observer.subscribe();

		System.out.println();

		Observer observer2 = new SMSUsers(subject, "Tim Ronney [London]");
		observer2.subscribe();

		Commentary cObject = ((Commentary)subject);
		cObject.setDesc("Welcome to live Soccer match");
		cObject.setDesc("Current score 0-0");

		System.out.println();

		observer2.unSubscribe();

		System.out.println();

		cObject.setDesc("It's a goal!!");
		cObject.setDesc("Current score 1-0");

		System.out.println();

		Observer observer3 = new SMSUsers(subject, "Marrie [Paris]");
		observer3.subscribe();

		System.out.println();

		cObject.setDesc("It's another goal!!");
		cObject.setDesc("Half-time score 2-0");

	}

}