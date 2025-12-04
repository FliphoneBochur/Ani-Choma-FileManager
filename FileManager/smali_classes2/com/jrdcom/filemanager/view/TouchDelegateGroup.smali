.class public Lcom/jrdcom/filemanager/view/TouchDelegateGroup;
.super Landroid/view/TouchDelegate;
.source "TouchDelegateGroup.java"


# static fields
.field private static final USELESS_HACKY_RECT:Landroid/graphics/Rect;


# instance fields
.field private mCurrentTouchDelegate:Landroid/view/TouchDelegate;

.field private mEnabled:Z

.field private final mTouchDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/TouchDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->USELESS_HACKY_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 19
    sget-object v0, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->USELESS_HACKY_RECT:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->mTouchDelegates:Ljava/util/ArrayList;

    .line 20
    return-void
.end method


# virtual methods
.method public addTouchDelegate(Landroid/view/TouchDelegate;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->mTouchDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public clearTouchDelegates()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->mTouchDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    .line 36
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 40
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 42
    :cond_0
    nop

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    goto :goto_1

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    .line 57
    goto :goto_1

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    .line 62
    iput-object v2, p0, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    move-object v2, v0

    goto :goto_1

    .line 46
    :cond_3
    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->mTouchDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 47
    iget-object v4, p0, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->mTouchDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/TouchDelegate;

    .line 48
    invoke-virtual {v4, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 49
    iput-object v4, p0, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    .line 50
    return v3

    .line 46
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_5
    nop

    .line 66
    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {v2, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v1, v3

    :cond_6
    return v1
.end method

.method public removeTouchDelegate(Landroid/view/TouchDelegate;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->mTouchDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    if-ne v0, p1, :cond_0

    .line 29
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->mCurrentTouchDelegate:Landroid/view/TouchDelegate;

    .line 31
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/jrdcom/filemanager/view/TouchDelegateGroup;->mEnabled:Z

    .line 71
    return-void
.end method
