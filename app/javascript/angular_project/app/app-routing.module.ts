import { RouterModule, Routes } from '@angular/router';
import { NgModule } from '@angular/core';

import { UrlShortener } from './../app/models/url_shortener';
import {UrlShortenerComponent} from "angular_project/app/components/url_shortener/index.component";

const appRoutes: Routes = [
    { path: 'shortened', component: UrlShortenerComponent },
    { path: '', redirectTo: '/shortened', pathMatch: 'full' },
];

@NgModule({
    imports: [
        RouterModule.forRoot(appRoutes, { scrollPositionRestoration: 'enabled' }),
    ],
    exports: [RouterModule]
})

export class AppRoutingModule { }