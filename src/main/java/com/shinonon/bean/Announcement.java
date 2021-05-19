package com.shinonon.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author Shinonon
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Announcement {
    int id;
    String title;
    String detail;
    Date publishDate;
}
