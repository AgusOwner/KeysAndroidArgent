.class public Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;
.super Ljava/lang/Object;
.source "Replace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Replace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Replacefilter"
.end annotation


# instance fields
.field private inputBuffer:Ljava/lang/StringBuffer;

.field private outputBuffer:Ljava/lang/StringBuffer;

.field private property:Ljava/lang/String;

.field private replaceValue:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Replace;

.field private token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

.field private value:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/Replace;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->this$0:Lorg/apache/tools/ant/taskdefs/Replace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->outputBuffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method private replace()I
    .locals 7

    .line 332
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 335
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 336
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->replaceValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 338
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->inputBuffer:Ljava/lang/StringBuffer;

    add-int v5, v1, v2

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->replaceValue:Ljava/lang/String;

    invoke-virtual {v4, v1, v5, v6}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int v4, v1, v3

    .line 340
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0, v4}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 341
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->this$0:Lorg/apache/tools/ant/taskdefs/Replace;

    invoke-static {v5}, Lorg/apache/tools/ant/taskdefs/Replace;->access$304(Lorg/apache/tools/ant/taskdefs/Replace;)I

    goto :goto_0

    :cond_0
    return v4
.end method


# virtual methods
.method public createReplaceToken()Lorg/apache/tools/ant/taskdefs/Replace$NestedString;
    .locals 2

    .line 256
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->this$0:Lorg/apache/tools/ant/taskdefs/Replace;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;-><init>(Lorg/apache/tools/ant/taskdefs/Replace;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    return-object v0
.end method

.method public createReplaceValue()Lorg/apache/tools/ant/taskdefs/Replace$NestedString;
    .locals 2

    .line 268
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->value:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->this$0:Lorg/apache/tools/ant/taskdefs/Replace;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;-><init>(Lorg/apache/tools/ant/taskdefs/Replace;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->value:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    .line 271
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->value:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    return-object v0
.end method

.method flush()V
    .locals 3

    .line 321
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->replace()I

    .line 322
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->outputBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 323
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->inputBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    return-void
.end method

.method getOutputBuffer()Ljava/lang/StringBuffer;
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->outputBuffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->property:Ljava/lang/String;

    return-object v0
.end method

.method public getReplaceValue()Ljava/lang/String;
    .locals 2

    .line 186
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->property:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->this$0:Lorg/apache/tools/ant/taskdefs/Replace;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Replace;->access$100(Lorg/apache/tools/ant/taskdefs/Replace;)Ljava/util/Properties;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->property:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->value:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 192
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->this$0:Lorg/apache/tools/ant/taskdefs/Replace;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Replace;->access$200(Lorg/apache/tools/ant/taskdefs/Replace;)Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->this$0:Lorg/apache/tools/ant/taskdefs/Replace;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Replace;->access$200(Lorg/apache/tools/ant/taskdefs/Replace;)Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->value:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method process()Z
    .locals 4

    .line 304
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 306
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->replace()I

    move-result v1

    .line 307
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 308
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->outputBuffer:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    return v0

    :cond_0
    return v3
.end method

.method setInputBuffer(Ljava/lang/StringBuffer;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->inputBuffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->property:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 1

    .line 204
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->createReplaceToken()Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;->addText(Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 221
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->createReplaceValue()Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;->addText(Ljava/lang/String;)V

    return-void
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    if-eqz v0, :cond_6

    .line 151
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 157
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->value:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->property:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Either value or property can be specified, but a replacefilter element cannot have both."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->property:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 164
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->this$0:Lorg/apache/tools/ant/taskdefs/Replace;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Replace;->access$000(Lorg/apache/tools/ant/taskdefs/Replace;)Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->this$0:Lorg/apache/tools/ant/taskdefs/Replace;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Replace;->access$100(Lorg/apache/tools/ant/taskdefs/Replace;)Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->this$0:Lorg/apache/tools/ant/taskdefs/Replace;

    .line 171
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Replace;->access$100(Lorg/apache/tools/ant/taskdefs/Replace;)Ljava/util/Properties;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->property:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 172
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->property:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->this$0:Lorg/apache/tools/ant/taskdefs/Replace;

    .line 174
    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Replace;->access$000(Lorg/apache/tools/ant/taskdefs/Replace;)Lorg/apache/tools/ant/types/Resource;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "property \"%s\" was not found in %s"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 165
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The replacefilter\'s property attribute can only be used with the replacetask\'s propertyFile/Resource attribute."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->getReplaceValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->replaceValue:Ljava/lang/String;

    return-void

    .line 152
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The token must not be an empty string."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "token is a mandatory for replacefilter."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
