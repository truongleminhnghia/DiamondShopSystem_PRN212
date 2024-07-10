﻿
using System;
using System.Collections.Generic;

namespace DiamondShopSystem.Data.Models;

public partial class Customer
{
    public int CustomerId { get; set; }

    public string CustomerName { get; set; }

    public string Phone { get; set; }

    public string Address { get; set; }

    public string Email { get; set; }

    public string Password { get; set; }

    public string ImgUrl { get; set; }

    public DateTime? CreateDate { get; set; }

    public string Gender { get; set; }

    public bool? IsActive { get; set; }

    public DateTime? UpdateTime { get; set; }

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();
}