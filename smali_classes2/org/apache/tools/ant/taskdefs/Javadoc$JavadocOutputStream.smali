.class Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;
.super Lorg/apache/tools/ant/taskdefs/LogOutputStream;
.source "Javadoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Javadoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JavadocOutputStream"
.end annotation


# instance fields
.field private queuedLine:Ljava/lang/String;

.field private sawWarnings:Z

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Javadoc;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Javadoc;I)V
    .locals 0

    .line 2612
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->this$0:Lorg/apache/tools/ant/taskdefs/Javadoc;

    .line 2613
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    const/4 p1, 0x0

    .line 2621
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->queuedLine:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2622
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->sawWarnings:Z

    return-void
.end method


# virtual methods
.method protected logFlush()V
    .locals 2

    .line 2649
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->queuedLine:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 2650
    invoke-super {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->processLine(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 2651
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->queuedLine:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected processLine(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "(\\d) warning[s]?$"

    .line 2626
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2627
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->sawWarnings:Z

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    const-string v2, "Generating "

    .line 2630
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2631
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->queuedLine:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 2632
    invoke-super {p0, p2, v0}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->processLine(Ljava/lang/String;I)V

    .line 2634
    :cond_1
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->queuedLine:Ljava/lang/String;

    goto :goto_1

    .line 2636
    :cond_2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->queuedLine:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v2, "Building "

    .line 2637
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2638
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->queuedLine:Ljava/lang/String;

    invoke-super {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->processLine(Ljava/lang/String;I)V

    goto :goto_0

    .line 2640
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->queuedLine:Ljava/lang/String;

    invoke-super {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->processLine(Ljava/lang/String;I)V

    :goto_0
    const/4 v0, 0x0

    .line 2642
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->queuedLine:Ljava/lang/String;

    .line 2644
    :cond_4
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->processLine(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public sawWarnings()Z
    .locals 1

    .line 2656
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->sawWarnings:Z

    return v0
.end method
