.class Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SimPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "PopDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/dialog/PopDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimPickerAdapter"
.end annotation


# instance fields
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

.field mSingleChoice:Z

.field mSingleChoiceIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SimPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    iput-object p2, p0, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SimPickerAdapter;->mItemAdapter:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SimPickerAdapter;->mItemAdapter:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

.method public getSingleChoice()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SimPickerAdapter;->mSingleChoice:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 79
    if-nez p2, :cond_0

    .line 80
    iget-object p2, p0, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SimPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0b0066

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 84
    new-instance p3, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SingleHolder;

    invoke-direct {p3}, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SingleHolder;-><init>()V

    .line 85
    const v0, 0x7f080188

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SingleHolder;->text:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f080153

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p3, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SingleHolder;->mRadioButton:Landroid/widget/RadioButton;

    .line 87
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SingleHolder;

    .line 93
    :goto_0
    iget-object v0, p3, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SingleHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 94
    iget v0, p0, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SimPickerAdapter;->mSingleChoiceIndex:I

    if-ne p1, v0, :cond_1

    .line 95
    iget-object v0, p3, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SingleHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 97
    :cond_1
    iget-object v0, p3, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SingleHolder;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 100
    :goto_1
    iget-object p3, p3, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SingleHolder;->text:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SimPickerAdapter;->mItemAdapter:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-object p2
.end method

.method public setSingleChoice(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SimPickerAdapter;->mSingleChoice:Z

    .line 52
    return-void
.end method

.method public setSingleChoiceIndex(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/jrdcom/filemanager/dialog/PopDialogFragment$SimPickerAdapter;->mSingleChoiceIndex:I

    .line 69
    return-void
.end method
