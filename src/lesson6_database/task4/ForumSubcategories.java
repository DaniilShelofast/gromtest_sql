package lesson6_database.task4;

import java.util.Date;

public class ForumSubcategories {

    private long id;
    private ForumCategories forumCategories;
    private String title;
    private String description;
    private Date date;
    private String ip;

    public ForumSubcategories(long id, ForumCategories forumCategories, String title, String description, Date date, String ip) {
        this.id = id;
        this.forumCategories = forumCategories;
        this.title = title;
        this.description = description;
        this.date = date;
        this.ip = ip;
    }
}
