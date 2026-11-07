.class public Lorg/apache/tools/ant/taskdefs/Available$FileDir;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Available.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Available;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDir"
.end annotation


# static fields
.field private static final VALUES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "file"

    const-string v1, "dir"

    .line 493
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Available$FileDir;->VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 491
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 1

    .line 501
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Available$FileDir;->VALUES:[Ljava/lang/String;

    return-object v0
.end method

.method public isDir()Z
    .locals 2

    const-string v0, "dir"

    .line 510
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available$FileDir;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 2

    const-string v0, "file"

    .line 519
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available$FileDir;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
