.class public Lcom/jrdcom/filemanager/activity/FileDetailActivity$SimPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "FileDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/activity/FileDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimPickerAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mNameAdapter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleAdapter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileDetailActivity$SimPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    iput-object p2, p0, Lcom/jrdcom/filemanager/activity/FileDetailActivity$SimPickerAdapter;->mTitleAdapter:Ljava/util/ArrayList;

    .line 49
    iput-object p3, p0, Lcom/jrdcom/filemanager/activity/FileDetailActivity$SimPickerAdapter;->mNameAdapter:Ljava/util/ArrayList;

    .line 50
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileDetailActivity$SimPickerAdapter;->mTitleAdapter:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    return v0

    .line 56
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 70
    if-nez p2, :cond_1

    .line 72
    sget-boolean p2, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 73
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileDetailActivity$SimPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b0035

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 75
    :cond_0
    iget-object p2, p0, Lcom/jrdcom/filemanager/activity/FileDetailActivity$SimPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b0034

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 78
    :goto_0
    new-instance v0, Lcom/jrdcom/filemanager/activity/FileDetailActivity$SingleHolder;

    invoke-direct {v0, p3}, Lcom/jrdcom/filemanager/activity/FileDetailActivity$SingleHolder;-><init>(Lcom/jrdcom/filemanager/activity/FileDetailActivity$1;)V

    .line 79
    const p3, 0x7f08005e

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v0, Lcom/jrdcom/filemanager/activity/FileDetailActivity$SingleHolder;->detailTitle:Landroid/widget/TextView;

    .line 80
    const p3, 0x7f08005f

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v0, Lcom/jrdcom/filemanager/activity/FileDetailActivity$SingleHolder;->detailValue:Landroid/widget/TextView;

    .line 81
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/jrdcom/filemanager/activity/FileDetailActivity$SingleHolder;

    .line 85
    :goto_1
    iget-object p3, p0, Lcom/jrdcom/filemanager/activity/FileDetailActivity$SimPickerAdapter;->mTitleAdapter:Ljava/util/ArrayList;

    if-nez p3, :cond_2

    .line 86
    return-object p2

    .line 89
    :cond_2
    iget-object p3, v0, Lcom/jrdcom/filemanager/activity/FileDetailActivity$SingleHolder;->detailTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jrdcom/filemanager/activity/FileDetailActivity$SimPickerAdapter;->mTitleAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object p3, v0, Lcom/jrdcom/filemanager/activity/FileDetailActivity$SingleHolder;->detailValue:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileDetailActivity$SimPickerAdapter;->mNameAdapter:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-object p2
.end method
