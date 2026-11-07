.class public final enum Lorg/apache/tools/ant/util/PermissionUtils$FileType;
.super Ljava/lang/Enum;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/util/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/tools/ant/util/PermissionUtils$FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/tools/ant/util/PermissionUtils$FileType;

.field public static final enum DIR:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

.field public static final enum OTHER:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

.field public static final enum REGULAR_FILE:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

.field public static final enum SYMLINK:Lorg/apache/tools/ant/util/PermissionUtils$FileType;


# direct methods
.method private static synthetic $values()[Lorg/apache/tools/ant/util/PermissionUtils$FileType;
    .locals 4

    .line 203
    sget-object v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->REGULAR_FILE:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    sget-object v1, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->DIR:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    sget-object v2, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->SYMLINK:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    sget-object v3, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->OTHER:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 205
    new-instance v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    const-string v1, "REGULAR_FILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/util/PermissionUtils$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->REGULAR_FILE:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    .line 207
    new-instance v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    const-string v1, "DIR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/util/PermissionUtils$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->DIR:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    .line 209
    new-instance v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    const-string v1, "SYMLINK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/util/PermissionUtils$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->SYMLINK:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    .line 211
    new-instance v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    const-string v1, "OTHER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/util/PermissionUtils$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->OTHER:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    .line 203
    invoke-static {}, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->$values()[Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->$VALUES:[Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 203
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(Ljava/nio/file/Path;)Lorg/apache/tools/ant/util/PermissionUtils$FileType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    .line 222
    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p0

    .line 223
    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    sget-object p0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->REGULAR_FILE:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    return-object p0

    .line 225
    :cond_0
    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    sget-object p0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->DIR:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    return-object p0

    .line 227
    :cond_1
    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 228
    sget-object p0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->SYMLINK:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    return-object p0

    .line 230
    :cond_2
    sget-object p0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->OTHER:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    return-object p0
.end method

.method public static of(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/util/PermissionUtils$FileType;
    .locals 0

    .line 240
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 241
    sget-object p0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->DIR:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    return-object p0

    .line 243
    :cond_0
    sget-object p0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->REGULAR_FILE:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/util/PermissionUtils$FileType;
    .locals 1

    .line 203
    const-class v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    return-object p0
.end method

.method public static values()[Lorg/apache/tools/ant/util/PermissionUtils$FileType;
    .locals 1

    .line 203
    sget-object v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->$VALUES:[Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    invoke-virtual {v0}, [Lorg/apache/tools/ant/util/PermissionUtils$FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    return-object v0
.end method
