package com.sn.app.domain;


import javax.persistence.OneToMany;
import java.time.LocalDateTime;
import java.util.List;


public class Post {

    private Long postId;
    private String postText;
//    @DateTimeFormat(pattern = "MM/dd/yyyy HH:mm")
    //This will be timestamp format.

    private LocalDateTime localDateTime;


    private LocalDateTime updatedDateTime;


    private Person person;

    @OneToMany(mappedBy = "post")
    private List<Comment> comments;

// This will be file(image) type
    private String postPhoto;

    public Long getPostId() {
        return postId;
    }

    public void setPostId(Long postId) {
        this.postId = postId;
    }

    public String getPostText() {
        return postText;
    }

    public void setPostText(String postText) {
        this.postText = postText;
    }

    public LocalDateTime getLocalDateTime() {
        return localDateTime;
    }

    public void setLocalDateTime(LocalDateTime localDateTime) {
        this.localDateTime = localDateTime;
    }

    public LocalDateTime getUpdatedDateTime() {
        return updatedDateTime;
    }

    public void setUpdatedDateTime(LocalDateTime updatedDateTime) {
        this.updatedDateTime = updatedDateTime;
    }

    public String getPostPhoto() {
        return postPhoto;
    }

    public void setPostPhoto(String postPhoto) {
        this.postPhoto = postPhoto;
    }


    @Override
    public String toString() {
        return "Post{" +
                "postId=" + postId +
                ", postText='" + postText + '\'' +
                ", localDateTime='" + localDateTime + '\'' +
                ", postPhoto='" + postPhoto + '\'' +
                '}';
    }
}
