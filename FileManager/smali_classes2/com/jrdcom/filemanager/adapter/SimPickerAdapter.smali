.class public Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimPickerAdapter.java"


# static fields
.field public static SORT_ITEM:Ljava/lang/String;

.field public static TYPE:Ljava/lang/String;

.field public static VIEW_ITEM:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field mItemAdapter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSelectIndex:I

.field mSingleChoice:Z

.field mSingleChoiceIndex:I

.field public textAdapter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-string v0, "sort_item"

    sput-object v0, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->SORT_ITEM:Ljava/lang/String;

    .line 21
    const-string v0, "view_item"

    sput-object v0, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->VIEW_ITEM:Ljava/lang/String;

    .line 22
    const-string v0, "type"

    sput-object v0, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->textAdapter:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    iput-object p2, p0, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->mItemAdapter:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->mItemAdapter:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 56
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSingleChoice()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->mSingleChoice:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 78
    if-nez p2, :cond_1

    .line 80
    sget-boolean p2, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 81
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b0070

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 83
    :cond_0
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b006f

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 89
    :goto_0
    new-instance p3, Lcom/jrdcom/filemanager/adapter/SingleHolder;

    invoke-direct {p3}, Lcom/jrdcom/filemanager/adapter/SingleHolder;-><init>()V

    .line 90
    const v0, 0x7f080177

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/jrdcom/filemanager/adapter/SingleHolder;->text:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f080176

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p3, Lcom/jrdcom/filemanager/adapter/SingleHolder;->mRadioButton:Landroid/widget/RadioButton;

    .line 92
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jrdcom/filemanager/adapter/SingleHolder;

    .line 99
    :goto_1
    iget v0, p0, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->mSingleChoiceIndex:I

    if-ne p1, v0, :cond_2

    .line 100
    iget-object v0, p3, Lcom/jrdcom/filemanager/adapter/SingleHolder;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07012c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 102
    :cond_2
    iget-object v0, p3, Lcom/jrdcom/filemanager/adapter/SingleHolder;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :goto_2
    iget v0, p0, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->mSelectIndex:I

    if-ne p1, v0, :cond_3

    .line 106
    iget-object v0, p3, Lcom/jrdcom/filemanager/adapter/SingleHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_3

    .line 108
    :cond_3
    iget-object v0, p3, Lcom/jrdcom/filemanager/adapter/SingleHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 114
    :goto_3
    iget-object p3, p3, Lcom/jrdcom/filemanager/adapter/SingleHolder;->text:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->mItemAdapter:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-object p2
.end method

.method public setSelectPosition(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->mSelectIndex:I

    .line 65
    return-void
.end method

.method public setSingleChoice(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->mSingleChoice:Z

    .line 44
    return-void
.end method

.method public setSingleChoiceIndex(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/jrdcom/filemanager/adapter/SimPickerAdapter;->mSingleChoiceIndex:I

    .line 61
    return-void
.end method
