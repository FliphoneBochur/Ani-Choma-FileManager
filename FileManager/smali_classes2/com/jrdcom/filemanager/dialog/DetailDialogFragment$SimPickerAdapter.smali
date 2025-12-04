.class Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SimPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/dialog/DetailDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimPickerAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mNameAdapter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleAdapter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SimPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 92
    iput-object p2, p0, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SimPickerAdapter;->mTitleAdapter:Ljava/util/List;

    .line 93
    iput-object p3, p0, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SimPickerAdapter;->mNameAdapter:Ljava/util/List;

    .line 94
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SimPickerAdapter;->mTitleAdapter:Ljava/util/List;

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    return v0

    .line 100
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 108
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 114
    if-nez p2, :cond_0

    .line 115
    iget-object p2, p0, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SimPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0b0034

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 117
    new-instance p3, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SingleHolder;

    invoke-direct {p3, v0}, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SingleHolder;-><init>(Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$1;)V

    .line 118
    const v0, 0x7f08005e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SingleHolder;->detail_title:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f08005f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SingleHolder;->detail_value:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f08005b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SingleHolder;->divider:Landroid/widget/TextView;

    .line 121
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SingleHolder;

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SimPickerAdapter;->mTitleAdapter:Ljava/util/List;

    if-nez v0, :cond_1

    .line 126
    return-object p2

    .line 128
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 129
    iget-object v0, p3, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SingleHolder;->divider:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 131
    :cond_2
    iget-object v0, p3, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SingleHolder;->divider:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    :goto_1
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p3, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SingleHolder;->detail_value:Landroid/widget/TextView;

    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 136
    :cond_3
    iget-object v0, p3, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SingleHolder;->detail_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SimPickerAdapter;->mTitleAdapter:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object p3, p3, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SingleHolder;->detail_value:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/DetailDialogFragment$SimPickerAdapter;->mNameAdapter:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-object p2
.end method
