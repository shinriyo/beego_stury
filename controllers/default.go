package controllers

import (
	"beeapp/models"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
)

type MainController struct {
	beego.Controller
}

func (this *MainController) Get() {
	/*
	this.Data["Website"] = "beego.me"
	this.Data["Email"] = "astaxie@gmail.com"
	this.TplNames = "index.tpl"
	*/
	o := orm.NewOrm()

	var greetings []*models.Greeting
	o.QueryTable("greeting").OrderBy("-CreateAt").All(&greetings)

	this.Data["greetings"] = greetings
	this.TplNames = "index.tpl"
}
