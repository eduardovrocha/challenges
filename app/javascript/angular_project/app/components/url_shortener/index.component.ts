import { Component, OnInit } from '@angular/core';

import templateString from './index.component.html';
import { UrlShortener }  from '../../models/url_shortener';

@Component({
    selector: 'url_shortener',
    template: templateString,
})

export class UrlShortenerComponent implements OnInit {
    constructor() {
        // this.blogService.getBlogs().subscribe(blogs => {
        //     this.blogs = blogs;
        // });
    }

    ngOnInit() { }
}