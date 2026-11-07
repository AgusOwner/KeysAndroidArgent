.class Lorg/apache/tools/ant/taskdefs/Length$AllHandler;
.super Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;
.source "Length.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Length;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Length;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Length;Ljava/io/PrintStream;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Length$AllHandler;->this$0:Lorg/apache/tools/ant/taskdefs/Length;

    .line 343
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;-><init>(Lorg/apache/tools/ant/taskdefs/Length;Ljava/io/PrintStream;)V

    return-void
.end method


# virtual methods
.method complete()V
    .locals 3

    .line 348
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Length$AllHandler;->getPs()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Length$AllHandler;->getAccum()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->print(J)V

    .line 349
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;->complete()V

    return-void
.end method
