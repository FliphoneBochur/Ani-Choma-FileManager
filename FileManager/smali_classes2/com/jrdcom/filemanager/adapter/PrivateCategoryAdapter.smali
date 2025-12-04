.class public Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "PrivateCategoryAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTypeArray:[Ljava/lang/String;

.field private mTypeTextview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;->mTypeArray:[Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    invoke-direct {p0}, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;->initData()V

    .line 33
    return-void
.end method

.method private initData()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;->mTypeArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0090

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 38
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;->mTypeArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c008f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 39
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;->mTypeArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0034

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 40
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;->mTypeArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0037

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 41
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;->mTypeArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0030

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 43
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;->mTypeArray:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;->mTypeArray:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 58
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 63
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0b0060

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 64
    const p3, 0x7f08011b

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;->mTypeTextview:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;->mTypeArray:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-object p2
.end method
