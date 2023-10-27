package lesson6_database.task4;

import java.util.Date;

public class ForumPosts {

    private long id;
    private ForumSubcategories forumSubcategories;
    private Users users;
    private ForumPosts forumPosts;
    private String title;
    private String content;
    private boolean isPoll;
    private Date date;
    private String ip;

    public ForumPosts(long id, ForumSubcategories forumSubcategories, Users users, ForumPosts forumPosts, String title, String content, boolean isPoll, Date date, String ip) {
        this.id = id;
        this.forumSubcategories = forumSubcategories;
        this.users = users;
        this.forumPosts = forumPosts;
        this.title = title;
        this.content = content;
        this.isPoll = isPoll;
        this.date = date;
        this.ip = ip;
    }
}
