.class final Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;
.super Ljava/io/Reader;
.source "Concat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Concat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LastLineFixingReader"
.end annotation


# instance fields
.field private final lastChars:[C

.field private lastPos:I

.field private needAddSeparator:Z

.field private final reader:Ljava/io/Reader;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Concat;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/io/Reader;)V
    .locals 1

    .line 224
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    .line 220
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastPos:I

    .line 221
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Concat;->access$000(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastChars:[C

    .line 222
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->needAddSeparator:Z

    .line 225
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->reader:Ljava/io/Reader;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/io/Reader;Lorg/apache/tools/ant/taskdefs/Concat$1;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/io/Reader;)V

    return-void
.end method

.method private addLastChar(C)V
    .locals 4

    .line 329
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastChars:[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastChars:[C

    array-length v1, v0

    sub-int/2addr v1, v2

    aput-char p1, v0, v1

    return-void
.end method

.method private isMissingEndOfLine()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 338
    :goto_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastChars:[C

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 339
    aget-char v2, v2, v1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/Concat;->access$000(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->needAddSeparator:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 238
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastPos:I

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Concat;->access$000(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    return v1

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$000(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 244
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 246
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->isMissingEndOfLine()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->needAddSeparator:Z

    .line 248
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastPos:I

    .line 249
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$000(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_2
    return v1

    :cond_3
    int-to-char v1, v0

    .line 252
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->addLastChar(C)V

    return v0
.end method

.method public read([CII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 272
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->needAddSeparator:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    .line 273
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastPos:I

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v4}, Lorg/apache/tools/ant/taskdefs/Concat;->access$000(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_1

    goto :goto_4

    .line 276
    :cond_1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Concat;->access$000(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastPos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, p1, p2

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x1

    if-nez p3, :cond_0

    return v1

    .line 285
    :cond_2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->reader:Ljava/io/Reader;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_6

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move v3, v2

    .line 295
    :goto_1
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastChars:[C

    array-length v5, v5

    sub-int v5, v2, v5

    if-le v3, v5, :cond_5

    if-gtz v3, :cond_4

    goto :goto_2

    :cond_4
    add-int v5, p2, v3

    sub-int/2addr v5, v4

    .line 300
    aget-char v5, p1, v5

    invoke-direct {p0, v5}, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->addLastChar(C)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    add-int/2addr v1, v2

    if-nez p3, :cond_0

    return v1

    .line 287
    :cond_6
    :goto_3
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->isMissingEndOfLine()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 288
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->needAddSeparator:Z

    .line 289
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;->lastPos:I

    goto :goto_0

    :cond_7
    :goto_4
    if-nez v1, :cond_8

    return v3

    :cond_8
    return v1
.end method
