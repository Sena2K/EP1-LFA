def tradutor_codigo_morse
  puts "Digite uma frase em código morse: "
  entrada = gets.strip.split("")
  index = 0
  traducao = ""

  def q0(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      q1(msg, index, traducao)
    when "-"
      index += 1
      q15(msg, index, traducao)
    when "/"
      index += 1
      q0(msg, index, traducao)
    when " "
      index += 1
      traducao.concat(" ")
      q0(msg, index, traducao)
    when nil
    else
      estado = "Erro"
    end
  end

  def q1(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      q2(msg, index, traducao)
    when "-"
      index += 1
      q6(msg, index, traducao)
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      index += 1
      traducao.concat("e")
      q0(msg, index, traducao)
    when nil
      traducao.concat("e")
    else
      estado = "Erro"
    end
  end

  def q2(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      q3(msg, index, traducao)
    when "-"
      index += 1
      q12(msg, index, traducao)
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      index += 1
      traducao.concat("i")
      q0(msg, index, traducao)
    when nil
      traducao.concat("i")
    else
      estado = "Erro"
    end
  end

  def q3(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      q4(msg, index, traducao)
    when "-"
      index += 1
      q11(msg, index, traducao)
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("s")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("s")
    else
      estado = "Erro"
    end
  end

  def q4(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      q5(msg, index, traducao)
    when "-"
      index += 1
      q30(msg, index, traducao)
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("h")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("h")
    else
      estado = "Erro"
    end
  end

  def q5(msg, index, traducao)
    case msg[index]
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("5")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("5")
    else
      estado = "Erro"
    end
  end

  def q6(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      q7(msg, index, traducao)
    when "-"
      index += 1
      q9(msg, index, traducao)
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("a")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("a")
    else
      estado = "Erro"
    end
  end

  def q7(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      q8(msg, index, traducao)
    when "-"
      index += 1
      proximoSinal4(msg, index, traducao)
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("r")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("r")
    else
      estado = "Erro"
    end
  end

  def q8(msg, index, traducao)
    case msg[index]
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("l")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("l")
    else
      estado = "Erro"
    end
  end

  def q9(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      q14(msg, index, traducao)
    when "-"
      index += 1
      q10(msg, index, traducao)
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("w")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("w")
    else
      estado = "Erro"
    end
  end

  def q10(msg, index, traducao)
    case msg[index]
    when "-"
      index += 1
      q28(msg, index, traducao)
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("j")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("j")
    else
      estado = "Erro"
    end
  end

  def q11(msg, index, traducao)
    case msg[index]
    when "-"
      index += 1
      q29(msg, index, traducao)
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("v")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("v")
    else
      estado = "Erro"
    end
  end

  def q12(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      q13(msg, index, traducao)
    when "-"
      index += 1
      proximoSinal3(msg, index, traducao)
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("u")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("u")
    else
      estado = "Erro"
    end
  end

  def q13(msg, index, traducao)
    case msg[index]
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("f")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("f")
    else
      estado = "Erro"
    end
  end

  def q14(msg, index, traducao)
    case msg[index]
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("p")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("p")
    else
      estado = "Erro"
    end
  end

  def q15(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      q20(msg, index, traducao)
    when "-"
      index += 1
      q16(msg, index, traducao)
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("t")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("t")
    else
      estado = "Erro"
    end
  end

  def q16(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      q18(msg, index, traducao)
    when "-"
      index += 1
      q17(msg, index, traducao)
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("m")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("m")
    else
      estado = "Erro"
    end
  end

  def q17(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      proximoSinal(msg, index, traducao)
    when "-"
      index += 1
      proximoSinal2(msg, index, traducao)
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("o")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("o")
    else
      estado = "Erro"
    end
  end

  def q18(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      q25(msg, index, traducao)
    when "-"
      index += 1
      q19(msg, index, traducao)
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("g")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("g")
    else
      estado = "Erro"
    end
  end

  def q19(msg, index, traducao)
    case msg[index]
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("q")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("q")
    else
      estado = "Erro"
    end
  end

  def q20(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      q21(msg, index, traducao)
    when "-"
      index += 1
      q27(msg, index, traducao)
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("n")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("n")
    else
      estado = "Erro"
    end
  end

  def q21(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      q26(msg, index, traducao)
    when "-"
      index += 1
      q23(msg, index, traducao)
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("d")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("d")
    else
      estado = "Erro"
    end
  end

  def q22(msg, index, traducao)
    case msg[index]
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("c")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("c")
    else
      estado = "Erro"
    end
  end

  def q23(msg, index, traducao)
    case msg[index]
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("x")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("x")
    else
      estado = "Erro"
    end
  end

  def q24(msg, index, traducao)
    case msg[index]
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("y")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("y")
    else
      estado = "Erro"
    end
  end

  def q25(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      q32(msg, index, traducao)
    when "-"
      index += 1
      proximoSinal5(msg, index, traducao)
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("z")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("z")
    else
      estado = "Erro"
    end
  end

  def q26(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      q32(msg, index, traducao)
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("b")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("b")
    else
      estado = "Erro"
    end
  end

  def q27(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      q22(msg, index, traducao)
    when "-"
      index += 1
      q24(msg, index, traducao)
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("k")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("k")
    else
      estado = "Erro"
    end
  end

  def q28(msg, index, traducao)
    case msg[index]
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("1")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("1")
    else
      estado = "Erro"
    end
  end

  def q29(msg, index, traducao)
    case msg[index]
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("3")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("3")
    else
      estado = "Erro"
    end
  end

  def q30(msg, index, traducao)
    case msg[index]
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("4")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("4")
    else
      estado = "Erro"
    end
  end

  def q32(msg, index, traducao)
    case msg[index]
    when "/"
      index += 1
      q3(msg, index, traducao)
    when "-"
      index += 1
      q40(msg, index, traducao)
    when " "
      traducao.concat("6")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("6")
    else
      estado = "Erro"
    end
  end

  def q32(msg, index, traducao)
    case msg[index]
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("7")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("7")
    else
      estado = "Erro"
    end
  end

  def q33(msg, index, traducao)
    case msg[index]
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("8")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("8")
    else
      estado = "Erro"
    end
  end

  def proximoSinal(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      q33(msg, index, traducao)
    else
      estado = "Erro"
    end
  end

  def proximoSinal2(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      q35(msg, index, traducao)
    when "-"
      index += 1
      q35(msg, index, traducao)
    else
      estado = "Erro"
    end
  end

  def proximoSinal3(msg, index, traducao)
    case msg[index]
    when "-"
      index += 1
      q36(msg, index, traducao)
    when "."
      index += 1
      q41(msg, index, traducao)
    else
      estado = "Erro"
    end
  end

  def proximoSinal4(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      q37(msg, index, traducao)
    else
      estado = "Erro"
    end
  end

  def proximoSinal5(msg, index, traducao)
    case msg[index]
    when "-"
      index += 1
      q39(msg, index, traducao)
    else
      estado = "Erro"
    end
  end

  def q35(msg, index, traducao)
    case msg[index]
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("9")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("9")
    else
      estado = "Erro"
    end
  end

  def q35(msg, index, traducao)
    case msg[index]
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("0")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("0")
    else
      estado = "Erro"
    end
  end

  def q36(msg, index, traducao)
    case msg[index]
    when "/"
      index += 1
      q3(msg, index, traducao)
    when " "
      traducao.concat("2")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("2")
    else
      estado = "Erro"
    end
  end

  def q37(msg, index, traducao)
    case msg[index]
    when "-"
      index += 1
      q38(msg, index, traducao)
    else
      estado = "Erro"
    end
  end

  def q38(msg, index, traducao)
    case msg[index]
    when " "
      traducao.concat(".")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat(".")
    else
      estado = "Erro"
    end
  end

  def q39(msg, index, traducao)
    case msg[index]
    when " "
      traducao.concat(",")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat(",")
    else
      estado = "Erro"
    end
  end

  def q40(msg, index, traducao)
    case msg[index]
    when " "
      traducao.concat("-")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("-")
    else
      estado = "Erro"
    end
  end

  def q41(msg, index, traducao)
    case msg[index]
    when "."
      index += 1
      q42(msg, index, traducao)
    else
      estado = "Erro"
    end
  end

  def q42(msg, index, traducao)
    case msg[index]
    when " "
      traducao.concat("?")
      index += 1
      q0(msg, index, traducao)
    when nil
      traducao.concat("?")
    else
      estado = "Erro"
    end
  end

  q0(entrada, index, traducao)
  puts "Tradução: #{traducao.strip}"  # strip remove espaços no início e no final
end

tradutor_codigo_morse
