package com.example.duantn.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SizeGiay_list {
    List<Integer> dsSizeGiay = new ArrayList<Integer>();
}
