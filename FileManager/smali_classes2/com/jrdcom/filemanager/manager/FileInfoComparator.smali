.class public final Lcom/jrdcom/filemanager/manager/FileInfoComparator;
.super Ljava/lang/Object;
.source "FileInfoComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/jrdcom/filemanager/utils/FileInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final SORT_BY_NAME:I = 0x0

.field public static final SORT_BY_SIZE:I = 0x2

.field public static final SORT_BY_TIME:I = 0x1

.field public static final SORT_BY_TYPE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FileInfoComparator"

.field private static sInstance:Lcom/jrdcom/filemanager/manager/FileInfoComparator;


# instance fields
.field private mCollator:Ljava/text/RuleBasedCollator;

.field private mSortType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/jrdcom/filemanager/manager/FileInfoComparator;

    invoke-direct {v0}, Lcom/jrdcom/filemanager/manager/FileInfoComparator;-><init>()V

    sput-object v0, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->sInstance:Lcom/jrdcom/filemanager/manager/FileInfoComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->mSortType:I

    .line 33
    return-void
.end method

.method public static getInstance(I)Lcom/jrdcom/filemanager/manager/FileInfoComparator;
    .locals 1

    .line 55
    sget-object v0, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->sInstance:Lcom/jrdcom/filemanager/manager/FileInfoComparator;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->setSortType(I)V

    .line 56
    sget-object p0, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->sInstance:Lcom/jrdcom/filemanager/manager/FileInfoComparator;

    return-object p0
.end method

.method private setSortType(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->mSortType:I

    .line 43
    iget-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->mCollator:Ljava/text/RuleBasedCollator;

    if-nez p1, :cond_0

    .line 44
    sget-object p1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    check-cast p1, Ljava/text/RuleBasedCollator;

    iput-object p1, p0, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->mCollator:Ljava/text/RuleBasedCollator;

    .line 46
    :cond_0
    return-void
.end method

.method private sortByName(Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;)I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->mCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->mCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object p2

    .line 142
    iget-object v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->mCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {p1}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private sortBySize(Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;)I
    .locals 4

    .line 155
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileSize()J

    move-result-wide v0

    .line 157
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileSize()J

    move-result-wide v2

    .line 158
    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 159
    if-lez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1

    .line 162
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->sortByName(Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;)I

    move-result p1

    return p1
.end method

.method private sortByTime(Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;)I
    .locals 4

    .line 175
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileLastModifiedTime()J

    move-result-wide v0

    .line 176
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileLastModifiedTime()J

    move-result-wide v2

    .line 177
    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 178
    if-lez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1

    .line 180
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->sortByName(Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;)I

    move-result p1

    return p1
.end method

.method private sortByType(Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;)I
    .locals 3

    .line 108
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v0

    .line 109
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v1

    .line 110
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->sortByName(Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;)I

    move-result p1

    return p1

    .line 113
    :cond_0
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 115
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 118
    const/4 p1, -0x1

    return p1

    .line 119
    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 120
    const/4 p1, 0x1

    return p1

    .line 121
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 127
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->sortByName(Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public compare(Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;)I
    .locals 4

    .line 72
    const/4 v0, -0x1

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto :goto_2

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v1

    .line 76
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v2

    .line 77
    xor-int/2addr v2, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " vs "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    if-eqz v1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    const-string p2, "FileInfoComparator"

    invoke-static {p2, p1}, Lcom/jrdcom/filemanager/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    return v0

    .line 84
    :cond_3
    iget v0, p0, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->mSortType:I

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->sortByName(Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;)I

    move-result p1

    return p1

    .line 86
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->sortByType(Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;)I

    move-result p1

    return p1

    .line 90
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->sortBySize(Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;)I

    move-result p1

    return p1

    .line 92
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->sortByTime(Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;)I

    move-result p1

    return p1

    .line 88
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->sortByName(Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;)I

    move-result p1

    return p1

    .line 73
    :cond_8
    :goto_2
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 13
    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    check-cast p2, Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/jrdcom/filemanager/manager/FileInfoComparator;->compare(Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/utils/FileInfo;)I

    move-result p1

    return p1
.end method
