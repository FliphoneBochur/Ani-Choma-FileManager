.class public Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "SafeCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter$MyViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    invoke-direct {p0}, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;->initData()V

    .line 31
    return-void
.end method

.method private initData()V
    .locals 0

    .line 39
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 61
    if-nez p2, :cond_0

    .line 62
    new-instance p2, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter$MyViewHolder;

    invoke-direct {p2, p0}, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter$MyViewHolder;-><init>(Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;)V

    .line 63
    iget-object p3, p0, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b0064

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 64
    const v0, 0x7f080133

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter$MyViewHolder;->nameView:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f080131

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter$MyViewHolder;->iconView:Landroid/widget/ImageView;

    .line 66
    const v0, 0x7f080134

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter$MyViewHolder;->countView:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter$MyViewHolder;

    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;

    .line 72
    iget-object v0, p2, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter$MyViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p2, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter$MyViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object p2, p2, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter$MyViewHolder;->countView:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;->getCount()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0c008a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-object p3
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;->mList:Ljava/util/List;

    .line 35
    return-void
.end method
