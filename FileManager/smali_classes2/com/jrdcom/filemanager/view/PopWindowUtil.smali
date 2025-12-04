.class public Lcom/jrdcom/filemanager/view/PopWindowUtil;
.super Ljava/lang/Object;
.source "PopWindowUtil.java"


# static fields
.field public static HEIGHT_WITHOUT_STATUSBAR_AND_MENUBAR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/16 v0, 0x10a

    sput v0, Lcom/jrdcom/filemanager/view/PopWindowUtil;->HEIGHT_WITHOUT_STATUSBAR_AND_MENUBAR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPopHeight(Landroid/app/Activity;Landroid/view/View;)I
    .locals 0

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p0, p1

    .line 136
    return p0
.end method

.method public static showDetailPopWindow(Landroid/app/Activity;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/widget/PopupWindow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/widget/PopupWindow;"
        }
    .end annotation

    .line 82
    sget-boolean v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b001e

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b001d

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 89
    :goto_0
    const v1, 0x7f0800d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 90
    new-instance v2, Lcom/jrdcom/filemanager/activity/FileDetailActivity$SimPickerAdapter;

    invoke-direct {v2, p0, p2, p3}, Lcom/jrdcom/filemanager/activity/FileDetailActivity$SimPickerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 91
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    new-instance p2, Lcom/jrdcom/filemanager/view/PopWindowUtil$1;

    invoke-direct {p2, v1, p0, v2}, Lcom/jrdcom/filemanager/view/PopWindowUtil$1;-><init>(Landroid/widget/ListView;Landroid/app/Activity;Lcom/jrdcom/filemanager/activity/FileDetailActivity$SimPickerAdapter;)V

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 117
    new-instance p0, Landroid/widget/PopupWindow;

    const/4 p2, -0x1

    sget p3, Lcom/jrdcom/filemanager/view/PopWindowUtil;->HEIGHT_WITHOUT_STATUSBAR_AND_MENUBAR:I

    invoke-direct {p0, p2, p3}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 118
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 119
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 120
    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 121
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {p0, p1, p2, p2, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 125
    new-instance p1, Lcom/jrdcom/filemanager/view/PopWindowUtil$2;

    invoke-direct {p1, p0}, Lcom/jrdcom/filemanager/view/PopWindowUtil$2;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    return-object p0
.end method

.method public static showPopWindow(Landroid/app/Activity;Landroid/view/View;IZ)Landroid/widget/PopupWindow;
    .locals 2

    .line 49
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/jrdcom/filemanager/view/PopWindowUtil;->showPopWindow(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Z)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static showPopWindow(Landroid/app/Activity;Landroid/view/View;IZLjava/lang/String;)Landroid/widget/PopupWindow;
    .locals 2

    .line 31
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 32
    const v0, 0x7f080055

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    sget-boolean p4, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz p4, :cond_0

    .line 38
    const/4 p4, 0x1

    invoke-static {p4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 40
    :cond_0
    const/4 p4, 0x0

    invoke-static {p4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/jrdcom/filemanager/view/PopWindowUtil;->showPopWindow(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Z)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static showPopWindow(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Z)Landroid/widget/PopupWindow;
    .locals 2

    .line 56
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-static {p0, p1}, Lcom/jrdcom/filemanager/view/PopWindowUtil;->getPopHeight(Landroid/app/Activity;Landroid/view/View;)I

    move-result p0

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 57
    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 58
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 59
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 60
    invoke-virtual {v0, p3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 61
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-virtual {v0, p1, p0, p0, p0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 64
    return-object v0
.end method

.method public static showSortPopWindow(Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 3

    .line 69
    new-instance v0, Landroid/widget/PopupWindow;

    sget v1, Lcom/jrdcom/filemanager/view/PopWindowUtil;->HEIGHT_WITHOUT_STATUSBAR_AND_MENUBAR:I

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 70
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 71
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 73
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {v0, p0, p1, p1, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 76
    return-object v0
.end method
