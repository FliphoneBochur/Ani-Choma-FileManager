.class Lcom/jrdcom/filemanager/view/FloatingActionsMenu$RotatingDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/view/FloatingActionsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RotatingDrawable"
.end annotation


# instance fields
.field private mRotation:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 128
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 129
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 147
    iget v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$RotatingDrawable;->mRotation:F

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$RotatingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$RotatingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 148
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 150
    return-void
.end method

.method public getRotation()F
    .locals 1

    .line 135
    iget v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$RotatingDrawable;->mRotation:F

    return v0
.end method

.method public setRotation(F)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$RotatingDrawable;->mRotation:F

    .line 141
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$RotatingDrawable;->invalidateSelf()V

    .line 142
    return-void
.end method
