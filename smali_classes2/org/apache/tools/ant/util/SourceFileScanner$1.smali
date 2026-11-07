.class Lorg/apache/tools/ant/util/SourceFileScanner$1;
.super Lorg/apache/tools/ant/types/resources/FileResource;
.source "SourceFileScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/util/SourceFileScanner;->restrict([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;J)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tools/ant/util/SourceFileScanner;

.field final synthetic val$f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/util/SourceFileScanner;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lorg/apache/tools/ant/util/SourceFileScanner$1;->this$0:Lorg/apache/tools/ant/util/SourceFileScanner;

    iput-object p4, p0, Lorg/apache/tools/ant/util/SourceFileScanner$1;->val$f:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/tools/ant/util/SourceFileScanner$1;->val$f:Ljava/lang/String;

    return-object v0
.end method
