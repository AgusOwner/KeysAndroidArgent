.class Lorg/apache/tools/ant/taskdefs/PathConvert$3;
.super Lorg/apache/tools/ant/taskdefs/PathConvert$Output;
.source "PathConvert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/taskdefs/PathConvert;->createOutput()Lorg/apache/tools/ant/taskdefs/PathConvert$Output;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/tools/ant/taskdefs/PathConvert$Output<",
        "Ljava/io/OutputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/PathConvert;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/PathConvert;Ljava/io/OutputStream;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$3;->this$0:Lorg/apache/tools/ant/taskdefs/PathConvert;

    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/PathConvert$Output;-><init>(Lorg/apache/tools/ant/taskdefs/PathConvert;Ljava/io/Closeable;)V

    return-void
.end method


# virtual methods
.method doAccept(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert$3;->target:Ljava/io/Closeable;

    check-cast v0, Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
