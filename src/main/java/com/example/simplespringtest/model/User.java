package com.example.simplespringtest.model;

import lombok.*;

@Data
@NoArgsConstructor(staticName = "of")
@AllArgsConstructor
@Builder
public class User {
    @Builder.Default
    private Long id = 23490L;

    private String name;

    @EqualsAndHashCode.Exclude
    private Integer age;

}