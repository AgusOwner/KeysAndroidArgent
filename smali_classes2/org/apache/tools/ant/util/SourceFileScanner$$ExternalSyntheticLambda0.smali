.class public final synthetic Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/util/SourceFileScanner;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/util/SourceFileScanner;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/util/SourceFileScanner;

    iput-object p2, p0, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/util/SourceFileScanner;

    iget-object v1, p0, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/util/SourceFileScanner;->lambda$restrict$0$org-apache-tools-ant-util-SourceFileScanner(Ljava/io/File;Ljava/lang/String;)Lorg/apache/tools/ant/util/SourceFileScanner$1;

    move-result-object p1

    return-object p1
.end method
