.class public Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;
.super Lcom/jrdcom/filemanager/view/CustomPopupWindow;
.source "CustomPopupWindowBasedAnchor.java"


# instance fields
.field private mDisplayUtil:Lcom/jrdcom/filemanager/utils/DisplayUtil;

.field private mHeight:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field mRes:Landroid/content/res/Resources;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/view/View;IILandroid/app/Activity;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jrdcom/filemanager/view/CustomPopupWindow;-><init>(Landroid/view/View;IILandroid/app/Activity;)V

    .line 27
    invoke-virtual {p4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mRes:Landroid/content/res/Resources;

    .line 28
    iput p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mWidth:I

    .line 29
    iput p3, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mHeight:I

    .line 30
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 31
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 32
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    const p2, 0x7f0d0009

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 33
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 34
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mRes:Landroid/content/res/Resources;

    const p3, 0x7f07011d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x14

    if-le p1, p2, :cond_0

    .line 36
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mRes:Landroid/content/res/Resources;

    const p3, 0x7f060100

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 38
    :cond_0
    new-instance p1, Lcom/jrdcom/filemanager/utils/DisplayUtil;

    invoke-direct {p1, p4}, Lcom/jrdcom/filemanager/utils/DisplayUtil;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mDisplayUtil:Lcom/jrdcom/filemanager/utils/DisplayUtil;

    .line 40
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 178
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0

    .line 186
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showAsDropDownBasedAnchor(Landroid/view/View;II)V
    .locals 7

    .line 47
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 48
    nop

    .line 49
    nop

    .line 50
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 54
    const/4 v4, 0x0

    aget v4, v1, v4

    div-int/2addr v2, v0

    add-int/2addr v4, v2

    .line 55
    const/4 v5, 0x1

    aget v1, v1, v5

    div-int/lit8 v5, v3, 0x2

    add-int/2addr v1, v5

    .line 56
    iget-object v5, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mDisplayUtil:Lcom/jrdcom/filemanager/utils/DisplayUtil;

    invoke-virtual {v5}, Lcom/jrdcom/filemanager/utils/DisplayUtil;->getScreenWidth()I

    move-result v5

    .line 57
    iget-object v6, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mDisplayUtil:Lcom/jrdcom/filemanager/utils/DisplayUtil;

    invoke-virtual {v6}, Lcom/jrdcom/filemanager/utils/DisplayUtil;->getScreenHeight()I

    move-result v6

    .line 58
    sub-int/2addr v4, p2

    .line 59
    sub-int/2addr v1, p3

    .line 60
    sub-int/2addr v5, v4

    .line 61
    sub-int/2addr v6, v1

    .line 62
    iget v1, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mWidth:I

    if-lez v1, :cond_1

    .line 63
    if-lt v5, v1, :cond_0

    .line 64
    sub-int/2addr v2, p2

    goto :goto_0

    .line 66
    :cond_0
    sub-int/2addr v2, v1

    mul-int/2addr p2, v0

    add-int/2addr v2, p2

    goto :goto_0

    .line 69
    :cond_1
    sub-int/2addr v2, p2

    .line 71
    :goto_0
    iget p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mHeight:I

    if-lez p2, :cond_3

    .line 72
    if-lt v6, p2, :cond_2

    .line 73
    neg-int p2, v3

    div-int/2addr p2, v0

    sub-int/2addr p2, p3

    goto :goto_1

    .line 75
    :cond_2
    neg-int p2, v3

    div-int/2addr p2, v0

    mul-int/2addr p3, v0

    add-int/2addr p2, p3

    goto :goto_1

    .line 78
    :cond_3
    neg-int p2, v3

    div-int/2addr p2, v0

    sub-int/2addr p2, p3

    .line 80
    :goto_1
    iget-object p3, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p3, p1, v2, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 82
    :cond_4
    return-void
.end method

.method public showAtLocationBasedAnchor(Landroid/view/View;II)V
    .locals 10

    .line 85
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 86
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mHeight:I

    .line 87
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;)I

    .line 88
    nop

    .line 89
    nop

    .line 90
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 93
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 96
    iget-object v4, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mDisplayUtil:Lcom/jrdcom/filemanager/utils/DisplayUtil;

    invoke-virtual {v4}, Lcom/jrdcom/filemanager/utils/DisplayUtil;->getScreenWidth()I

    move-result v4

    .line 97
    iget-object v5, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mDisplayUtil:Lcom/jrdcom/filemanager/utils/DisplayUtil;

    invoke-virtual {v5}, Lcom/jrdcom/filemanager/utils/DisplayUtil;->getScreenHeight()I

    move-result v5

    .line 98
    const/4 v6, 0x0

    aget v7, v1, v6

    div-int/2addr v2, v0

    add-int/2addr v7, v2

    .line 99
    const/4 v2, 0x1

    aget v8, v1, v2

    div-int/lit8 v9, v3, 0x2

    add-int/2addr v8, v9

    .line 102
    aget v9, v1, v2

    add-int/2addr v9, v3

    if-le v9, v5, :cond_0

    .line 103
    aget v3, v1, v2

    aget v1, v1, v2

    sub-int v1, v5, v1

    div-int/2addr v1, v0

    add-int v8, v3, v1

    .line 106
    :cond_0
    sub-int/2addr v7, p2

    .line 107
    sub-int/2addr v8, p3

    .line 108
    sub-int/2addr v4, v7

    .line 109
    sub-int v1, v5, v8

    .line 110
    nop

    .line 111
    iget v3, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mWidth:I

    if-lez v3, :cond_2

    .line 112
    if-lt v4, v3, :cond_1

    .line 113
    nop

    .line 114
    goto :goto_0

    .line 116
    :cond_1
    sub-int/2addr v7, v3

    mul-int/2addr p2, v0

    add-int/2addr v7, p2

    move v2, v6

    goto :goto_0

    .line 119
    :cond_2
    move v2, v6

    .line 122
    :goto_0
    iget-object p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mDisplayUtil:Lcom/jrdcom/filemanager/utils/DisplayUtil;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/DisplayUtil;->getScreenScaledDensity()F

    move-result p2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr p2, v3

    float-to-int p2, p2

    sub-int/2addr v5, p2

    .line 123
    iget p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mHeight:I

    if-le p2, v5, :cond_3

    .line 124
    iput v5, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mHeight:I

    .line 125
    iget-object p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 128
    :cond_3
    iget p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mHeight:I

    if-lez p2, :cond_6

    .line 129
    if-lt v1, p2, :cond_4

    .line 130
    nop

    .line 131
    if-eqz v2, :cond_7

    iget-object p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    const p3, 0x7f0d000b

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_2

    .line 133
    :cond_4
    if-eqz v2, :cond_5

    .line 134
    iget-object p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    const v1, 0x7f0d000a

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_1

    .line 136
    :cond_5
    iget-object p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    const v1, 0x7f0d000c

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 138
    :goto_1
    iget p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mHeight:I

    sub-int/2addr v8, p2

    mul-int/2addr p3, v0

    add-int/2addr v8, p3

    .line 140
    add-int p3, v8, p2

    if-le p3, v5, :cond_7

    .line 141
    sub-int v8, v5, p2

    goto :goto_2

    .line 145
    :cond_6
    nop

    .line 149
    :cond_7
    :goto_2
    if-gez v8, :cond_8

    .line 150
    move v8, v6

    .line 153
    :cond_8
    iget-object p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p1, v6, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 155
    :cond_9
    return-void
.end method

.method public showAtLocationBasedAnchorMy(Landroid/widget/ImageView;II)V
    .locals 10

    .line 192
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 193
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mHeight:I

    .line 194
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;)I

    .line 195
    nop

    .line 196
    nop

    .line 197
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 200
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 201
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    .line 202
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    .line 203
    iget-object v4, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mDisplayUtil:Lcom/jrdcom/filemanager/utils/DisplayUtil;

    invoke-virtual {v4}, Lcom/jrdcom/filemanager/utils/DisplayUtil;->getScreenWidth()I

    move-result v4

    .line 204
    iget-object v5, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mDisplayUtil:Lcom/jrdcom/filemanager/utils/DisplayUtil;

    invoke-virtual {v5}, Lcom/jrdcom/filemanager/utils/DisplayUtil;->getScreenHeight()I

    move-result v5

    .line 205
    const/4 v6, 0x0

    aget v7, v1, v6

    div-int/2addr v2, v0

    add-int/2addr v7, v2

    .line 206
    const/4 v2, 0x1

    aget v8, v1, v2

    div-int/lit8 v9, v3, 0x2

    add-int/2addr v8, v9

    .line 209
    aget v9, v1, v2

    add-int/2addr v9, v3

    if-le v9, v5, :cond_0

    .line 210
    aget v3, v1, v2

    aget v1, v1, v2

    sub-int v1, v5, v1

    div-int/2addr v1, v0

    add-int v8, v3, v1

    .line 213
    :cond_0
    sub-int/2addr v7, p2

    .line 214
    sub-int/2addr v8, p3

    .line 215
    sub-int/2addr v4, v7

    .line 216
    sub-int v1, v5, v8

    .line 217
    nop

    .line 218
    iget v3, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mWidth:I

    if-lez v3, :cond_2

    .line 219
    if-lt v4, v3, :cond_1

    .line 220
    nop

    .line 221
    goto :goto_0

    .line 223
    :cond_1
    sub-int/2addr v7, v3

    mul-int/2addr p2, v0

    add-int/2addr v7, p2

    move v2, v6

    goto :goto_0

    .line 226
    :cond_2
    move v2, v6

    .line 229
    :goto_0
    iget-object p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mDisplayUtil:Lcom/jrdcom/filemanager/utils/DisplayUtil;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/DisplayUtil;->getScreenScaledDensity()F

    move-result p2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr p2, v3

    float-to-int p2, p2

    sub-int/2addr v5, p2

    .line 230
    iget p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mHeight:I

    if-le p2, v5, :cond_3

    .line 231
    iput v5, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mHeight:I

    .line 232
    iget-object p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 235
    :cond_3
    iget p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mHeight:I

    if-lez p2, :cond_6

    .line 236
    if-lt v1, p2, :cond_4

    .line 237
    nop

    .line 238
    if-eqz v2, :cond_7

    iget-object p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    const p3, 0x7f0d000b

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_2

    .line 240
    :cond_4
    if-eqz v2, :cond_5

    .line 241
    iget-object p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    const v1, 0x7f0d000a

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_1

    .line 243
    :cond_5
    iget-object p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    const v1, 0x7f0d000c

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 245
    :goto_1
    iget p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mHeight:I

    sub-int/2addr v8, p2

    mul-int/2addr p3, v0

    add-int/2addr v8, p3

    .line 247
    add-int p3, v8, p2

    if-le p3, v5, :cond_7

    .line 248
    sub-int v8, v5, p2

    goto :goto_2

    .line 252
    :cond_6
    nop

    .line 256
    :cond_7
    :goto_2
    if-gez v8, :cond_8

    .line 257
    move v8, v6

    .line 260
    :cond_8
    iget-object p2, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p1, v6, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 263
    :cond_9
    return-void
.end method

.method public showForCustomedOptionsMenu(Landroid/view/View;II)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 44
    return-void
.end method

.method public update(Landroid/app/Activity;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Lcom/jrdcom/filemanager/utils/DisplayUtil;

    invoke-direct {v0, p1}, Lcom/jrdcom/filemanager/utils/DisplayUtil;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mDisplayUtil:Lcom/jrdcom/filemanager/utils/DisplayUtil;

    .line 161
    iget-object p1, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->update()V

    .line 163
    :cond_0
    return-void
.end method

.method public update(Landroid/view/View;Landroid/app/Activity;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 168
    invoke-virtual {p0, p2}, Lcom/jrdcom/filemanager/view/CustomPopupWindowBasedAnchor;->update(Landroid/app/Activity;)V

    .line 170
    :cond_0
    return-void
.end method
