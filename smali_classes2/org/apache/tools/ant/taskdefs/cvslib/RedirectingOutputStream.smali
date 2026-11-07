.class Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingOutputStream;
.super Lorg/apache/tools/ant/util/LineOrientedOutputStream;
.source "RedirectingOutputStream.java"


# instance fields
.field private final parser:Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/util/LineOrientedOutputStream;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingOutputStream;->parser:Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;

    return-void
.end method


# virtual methods
.method protected processLine(Ljava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingOutputStream;->parser:Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->stdout(Ljava/lang/String;)V

    return-void
.end method
