package lesson6_database.task4;

import java.util.Date;

public class ForumPollsOptions {

    private long id;
    private ForumPollsOptionsVotes forumPollsOptionsVotes;
    private String title;
    private Date date;

    public ForumPollsOptions(long id, ForumPollsOptionsVotes forumPollsOptionsVotes, String title, Date date) {
        this.id = id;
        this.forumPollsOptionsVotes = forumPollsOptionsVotes;
        this.title = title;
        this.date = date;
    }
}
