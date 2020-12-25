package com.chrysaellect.meet.model;

import javax.persistence.*;

@Entity
@Table(name = "Resources_files")
public class resourcefiles {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "Resource_name")
    private String Resource_name;

    @Column(name = "filename")
    private String filename;

    @Column(name = "filetype")
    private String filetype;

    @Column(name = "title")
    private String title;

    @Column(name = "category")
    private String category;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Long getId() { return id; }

    public void setId(Long id) { this.id = id; }

    public String getResource_name() { return Resource_name; }

    public void setResource_name(String resource_name) { Resource_name = resource_name; }

    public String getFilename() { return filename; }

    public void setFilename(String filename) { this.filename = filename; }

    public String getFiletype() { return filetype; }

    public void setFiletype(String filetype) { this.filetype = filetype; }
}
