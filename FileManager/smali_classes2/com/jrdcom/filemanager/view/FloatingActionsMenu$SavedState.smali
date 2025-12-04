.class public Lcom/jrdcom/filemanager/view/FloatingActionsMenu$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/view/FloatingActionsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/jrdcom/filemanager/view/FloatingActionsMenu$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mExpanded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 626
    new-instance v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$SavedState$1;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$SavedState$1;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 616
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$SavedState;->mExpanded:Z

    .line 618
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/jrdcom/filemanager/view/FloatingActionsMenu$1;)V
    .locals 0

    .line 608
    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 612
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 613
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 622
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 623
    iget-boolean p2, p0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu$SavedState;->mExpanded:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    return-void
.end method
