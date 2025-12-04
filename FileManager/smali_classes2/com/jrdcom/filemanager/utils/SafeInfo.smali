.class public Lcom/jrdcom/filemanager/utils/SafeInfo;
.super Ljava/lang/Object;
.source "SafeInfo.java"


# instance fields
.field private safe_ct:J

.field private safe_info:Ljava/lang/String;

.field private safe_name:Ljava/lang/String;

.field private safe_path:Ljava/lang/String;

.field private storage_info:Ljava/lang/String;

.field private storage_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSafe_ct()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/jrdcom/filemanager/utils/SafeInfo;->safe_ct:J

    return-wide v0
.end method

.method public getSafe_info()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/SafeInfo;->safe_info:Ljava/lang/String;

    return-object v0
.end method

.method public getSafe_name()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/SafeInfo;->safe_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSafe_path()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/SafeInfo;->safe_path:Ljava/lang/String;

    return-object v0
.end method

.method public getStorage_info()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/SafeInfo;->storage_info:Ljava/lang/String;

    return-object v0
.end method

.method public getStorage_name()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/jrdcom/filemanager/utils/SafeInfo;->storage_name:Ljava/lang/String;

    return-object v0
.end method

.method public setSafe_ct(J)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/jrdcom/filemanager/utils/SafeInfo;->safe_ct:J

    .line 34
    return-void
.end method

.method public setSafe_info(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/SafeInfo;->safe_info:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setSafe_name(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/SafeInfo;->safe_name:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setSafe_path(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/SafeInfo;->safe_path:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setStorage_info(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/SafeInfo;->storage_info:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setStorage_name(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/jrdcom/filemanager/utils/SafeInfo;->storage_name:Ljava/lang/String;

    .line 26
    return-void
.end method
