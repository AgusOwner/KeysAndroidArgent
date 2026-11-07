.class public Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Tar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Tar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TarLongFileMode"
.end annotation


# static fields
.field public static final FAIL:Ljava/lang/String; = "fail"

.field public static final GNU:Ljava/lang/String; = "gnu"

.field public static final OMIT:Ljava/lang/String; = "omit"

.field public static final POSIX:Ljava/lang/String; = "posix"

.field public static final TRUNCATE:Ljava/lang/String; = "truncate"

.field private static final VALID_MODES:[Ljava/lang/String;

.field public static final WARN:Ljava/lang/String; = "warn"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "warn"

    const-string v1, "fail"

    const-string v2, "truncate"

    const-string v3, "gnu"

    const-string v4, "posix"

    const-string v5, "omit"

    .line 888
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->VALID_MODES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 894
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    const-string v0, "warn"

    .line 895
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 1

    .line 903
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->VALID_MODES:[Ljava/lang/String;

    return-object v0
.end method

.method public isFailMode()Z
    .locals 2

    const-string v0, "fail"

    .line 931
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isGnuMode()Z
    .locals 2

    const-string v0, "gnu"

    .line 924
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOmitMode()Z
    .locals 2

    const-string v0, "omit"

    .line 938
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPosixMode()Z
    .locals 2

    const-string v0, "posix"

    .line 945
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTruncateMode()Z
    .locals 2

    const-string v0, "truncate"

    .line 910
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWarnMode()Z
    .locals 2

    const-string v0, "warn"

    .line 917
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar$TarLongFileMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
