.class Lorg/apache/tools/ant/taskdefs/cvslib/RCSFile;
.super Ljava/lang/Object;
.source "RCSFile.java"


# instance fields
.field private name:Ljava/lang/String;

.field private previousRevision:Ljava/lang/String;

.field private revision:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/RCSFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/RCSFile;->name:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/RCSFile;->revision:Ljava/lang/String;

    .line 38
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 39
    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/RCSFile;->previousRevision:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/RCSFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method getPreviousRevision()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/RCSFile;->previousRevision:Ljava/lang/String;

    return-object v0
.end method

.method getRevision()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/RCSFile;->revision:Ljava/lang/String;

    return-object v0
.end method
