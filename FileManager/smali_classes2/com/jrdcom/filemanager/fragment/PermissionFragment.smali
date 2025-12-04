.class public Lcom/jrdcom/filemanager/fragment/PermissionFragment;
.super Landroid/app/Fragment;
.source "PermissionFragment.java"


# instance fields
.field private indicatorImage:Landroid/widget/ImageView;

.field private mBtnSettingExit:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDenyContent:Landroid/widget/TextView;

.field private mDenyTitle:Landroid/widget/TextView;

.field private mSettingOptionBtn:Landroid/view/View;

.field private mWelcomeTitle:Landroid/widget/TextView;

.field private permission_option_btn_container:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 40
    const p3, 0x7f0b0042

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->getContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 45
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    const p2, 0x7f080110

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->mWelcomeTitle:Landroid/widget/TextView;

    .line 47
    const p2, 0x7f080109

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->mDenyTitle:Landroid/widget/TextView;

    .line 48
    const p2, 0x7f080107

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->indicatorImage:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f080106

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->mDenyContent:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->indicatorImage:Landroid/widget/ImageView;

    .line 53
    const p2, 0x7f08010a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->permission_option_btn_container:Landroid/view/View;

    .line 54
    const p2, 0x7f08010e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->mSettingOptionBtn:Landroid/view/View;

    .line 55
    const p2, 0x7f08010d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->mBtnSettingExit:Landroid/view/View;

    .line 56
    new-instance p2, Lcom/jrdcom/filemanager/fragment/PermissionFragment$1;

    invoke-direct {p2, p0}, Lcom/jrdcom/filemanager/fragment/PermissionFragment$1;-><init>(Lcom/jrdcom/filemanager/fragment/PermissionFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->mSettingOptionBtn:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/PermissionUtil;->isSecondRequestPermission(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->updateView(I)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->mWelcomeTitle:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->mDenyTitle:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->mDenyContent:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->indicatorImage:Landroid/widget/ImageView;

    const v0, 0x7f07011c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->permission_option_btn_container:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :goto_0
    return-void
.end method

.method public updateView(I)V
    .locals 2

    .line 81
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->mWelcomeTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 84
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->mDenyTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 87
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    :cond_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->mDenyContent:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 90
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :cond_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->indicatorImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    .line 93
    const v1, 0x7f07011b

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    :cond_4
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PermissionFragment;->permission_option_btn_container:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :cond_5
    :goto_0
    return-void
.end method
