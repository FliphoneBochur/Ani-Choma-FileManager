.class public Lcom/jrdcom/filemanager/view/CustomPopupWindow;
.super Ljava/lang/Object;
.source "CustomPopupWindow.java"


# instance fields
.field private mDisplayUtil:Lcom/jrdcom/filemanager/utils/DisplayUtil;

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/view/View;IILandroid/app/Activity;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 57
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 58
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 59
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x106000d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->update()V

    .line 62
    new-instance p1, Lcom/jrdcom/filemanager/utils/DisplayUtil;

    invoke-direct {p1, p4}, Lcom/jrdcom/filemanager/utils/DisplayUtil;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mDisplayUtil:Lcom/jrdcom/filemanager/utils/DisplayUtil;

    .line 63
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 202
    :cond_0
    return-void
.end method

.method public getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0

    .line 214
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 147
    :cond_0
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 115
    :cond_0
    return-void
.end method

.method public showAsDropUp(Landroid/view/View;III)V
    .locals 5

    .line 126
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 127
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 130
    const/4 v4, 0x0

    aget v4, v1, v4

    div-int/2addr v2, v0

    .line 131
    const/4 v2, 0x1

    aget v1, v1, v2

    div-int/2addr v3, v0

    .line 132
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mDisplayUtil:Lcom/jrdcom/filemanager/utils/DisplayUtil;

    int-to-float p4, p4

    invoke-virtual {v2, p4}, Lcom/jrdcom/filemanager/utils/DisplayUtil;->dipToPx(F)I

    move-result p4

    add-int/2addr v1, p4

    sub-int/2addr p3, v1

    .line 133
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 136
    :cond_0
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 162
    :cond_0
    return-void
.end method

.method public showByClickView(Landroid/view/View;I)V
    .locals 2

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mDisplayUtil:Lcom/jrdcom/filemanager/utils/DisplayUtil;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/DisplayUtil;->getScreenHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    .line 84
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->showAsDropUp(Landroid/view/View;III)V

    .line 86
    :goto_0
    return-void
.end method

.method public showByClickView(Landroid/view/View;III)V
    .locals 2

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mDisplayUtil:Lcom/jrdcom/filemanager/utils/DisplayUtil;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/utils/DisplayUtil;->getScreenHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_0

    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->showAsDropUp(Landroid/view/View;III)V

    .line 102
    :goto_0
    return-void
.end method

.method public showCustomAsDropCenterDown(Landroid/view/View;I)V
    .locals 6

    .line 186
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 188
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 189
    iget-object v2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    aget v4, v1, v3

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v4, v5

    div-int/2addr p2, v0

    sub-int/2addr v4, p2

    const/4 p2, 0x1

    aget p2, v1, p2

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr p2, v1

    add-int/2addr p2, v0

    .line 189
    invoke-virtual {v2, p1, v3, v4, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 193
    :cond_0
    return-void
.end method

.method public showCustomAsDropDown(Landroid/view/View;)V
    .locals 5

    .line 171
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 174
    iget-object v1, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v0, v0, v4

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    .line 174
    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 177
    :cond_0
    return-void
.end method
