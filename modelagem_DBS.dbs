<?xml version="1.0" encoding="UTF-8" ?>
<project name="modelo_tripulacao" id="LogicalDesign-ba6" database="LogicalDesign" >
	<comment><![CDATA[Modelo lógico do banco de dados da Tripulação Voluntária | T11 | G01]]></comment>
	<schema name="INSTANCE" catalogname="modelo_tripulacao" >
		<table name="Entity" />
		<table name="Entity_0" />
		<table name="inscricoes" prior="Entity_1" >
			<column name="id_inscricao" type="INT" jt="4" mandatory="y" />
			<column name="email" type="VARCHAR" length="100" jt="12" mandatory="y" />
			<column name="nome" type="VARCHAR" length="100" jt="12" mandatory="y" />
			<column name="interesse" prior="objetivo" type="TEXT" jt="-1" mandatory="y" />
			<column name="curriculo" prior="link" type="TEXT" jt="-1" />
			<column name="id_usuario" type="INT" jt="4" mandatory="y" />
			<column name="id_oportunidade" type="INT" jt="4" mandatory="y" />
			<index name="pk_inscricoes" unique="PRIMARY_KEY" >
				<column name="id_inscricao" />
				<column name="id_usuario" />
				<column name="id_oportunidade" />
			</index>
			<fk name="fk_inscricoes_id_usuario" to_schema="modelo_tripulacao.INSTANCE" to_table="usuarios" type="Identifying" mandatory="y" cardinality="OneMore" range_from="0" range_to="0" >
				<fk_column name="id_usuario" pk="id_usuario" />
			</fk>
			<fk name="fk_inscricoes_oportunidades" to_schema="modelo_tripulacao.INSTANCE" to_table="oportunidades" type="Identifying" mandatory="y" cardinality="OneMore" range_from="0" range_to="0" >
				<fk_column name="id_oportunidade" pk="id_oportunidade" />
			</fk>
		</table>
		<table name="oportunidades" prior="Entity" >
			<column name="id_oportunidade" type="INT" jt="4" mandatory="y" />
			<column name="vagas" prior="qtd_vagas" type="INT" jt="4" mandatory="y" />
			<column name="descricao" type="TEXT" jt="-1" mandatory="y" />
			<column name="area_trabalho" prior="area" type="TEXT" jt="-1" mandatory="y" />
			<column name="abertura" prior="data_abertura" type="DATE" jt="91" mandatory="y" />
			<column name="fechamento" prior="data_fechamento" type="DATE" jt="91" mandatory="y" />
			<column name="id_organizacao" type="INT" jt="4" mandatory="y" />
			<column name="id_usuario" type="INT" jt="4" mandatory="y" />
			<index name="pk_oportunidades" unique="PRIMARY_KEY" >
				<column name="id_oportunidade" />
				<column name="id_organizacao" />
				<column name="id_usuario" />
			</index>
			<index name="unq_id_oportunidade" unique="UNIQUE_INDEX" >
				<column name="id_oportunidade" />
			</index>
			<fk name="fk_oportunidades_organizacoes" to_schema="modelo_tripulacao.INSTANCE" to_table="organizacoes" type="Identifying" mandatory="y" cardinality="OneMore" range_from="0" range_to="0" >
				<fk_column name="id_organizacao" pk="id_organizacao" />
			</fk>
			<fk name="fk_oportunidades_id_usuario" to_schema="modelo_tripulacao.INSTANCE" to_table="usuarios" type="Identifying" mandatory="y" cardinality="OneMore" range_from="0" range_to="0" >
				<fk_column name="id_usuario" pk="id_usuario" />
			</fk>
		</table>
		<table name="organizacoes" prior="Entity" >
			<column name="id_organizacao" type="INT" jt="4" mandatory="y" />
			<column name="nome" type="VARCHAR" length="100" jt="12" mandatory="y" />
			<column name="email" type="VARCHAR" length="100" jt="12" mandatory="y" />
			<column name="cnpj" type="VARCHAR" length="20" jt="12" mandatory="y" />
			<column name="area_trabalho" prior="areas_trabalho" type="VARCHAR" length="100" jt="12" mandatory="y" />
			<column name="id_usuario" type="INT" jt="4" mandatory="y" />
			<index name="pk_organizacoes" unique="PRIMARY_KEY" >
				<column name="id_organizacao" />
				<column name="id_usuario" />
			</index>
			<index name="unq_id_organizacao" unique="UNIQUE_INDEX" >
				<column name="id_organizacao" />
			</index>
			<fk name="fk_organizacoes_id_usuario" to_schema="modelo_tripulacao.INSTANCE" to_table="usuarios" type="Identifying" mandatory="y" cardinality="ZeroMore" range_from="0" range_to="0" >
				<fk_column name="id_usuario" pk="id_usuario" />
			</fk>
		</table>
		<table name="publicacoes" prior="Entity_1" >
			<column name="id_publicacao" type="INT" jt="4" mandatory="y" />
			<column name="titulo" prior="titulov" type="VARCHAR" length="100" jt="12" mandatory="y" />
			<column name="descricao" prior="conteudo" type="TEXT" jt="-1" mandatory="y" />
			<column name="anexos" type="TEXT" jt="-1" />
			<column name="id_usuario" type="INT" jt="4" mandatory="y" />
			<column name="id_organizacao" type="INT" jt="4" mandatory="y" />
			<index name="pk_publicacoes" unique="PRIMARY_KEY" >
				<column name="id_publicacao" />
				<column name="id_usuario" />
				<column name="id_organizacao" />
			</index>
			<fk name="fk_publicacoes_id_usuario" to_schema="modelo_tripulacao.INSTANCE" to_table="usuarios" type="Identifying" mandatory="y" cardinality="OneMore" range_from="0" range_to="0" >
				<fk_column name="id_usuario" pk="id_usuario" />
			</fk>
			<fk name="fk_publicacoes_organizacoes" to_schema="modelo_tripulacao.INSTANCE" to_table="organizacoes" type="Identifying" mandatory="y" cardinality="OneMore" range_from="0" range_to="0" >
				<fk_column name="id_organizacao" pk="id_organizacao" />
			</fk>
		</table>
		<table name="usuarios" prior="usuario" >
			<column name="id_usuario" type="INT" jt="4" mandatory="y" />
			<column name="nome" type="VARCHAR" length="100" jt="12" mandatory="y" />
			<column name="email" type="VARCHAR" length="100" jt="12" mandatory="y" />
			<column name="senha" type="VARCHAR" length="100" jt="12" mandatory="y" />
			<column name="nascimento" prior="data_nascimento" type="DATE" jt="91" mandatory="y" />
			<column name="area_trabalho" prior="interesse" type="VARCHAR" length="100" jt="12" mandatory="y" />
			<column name="publicar_perfil" type="BOOLEAN" jt="-7" mandatory="y" />
			<index name="pk_id_usuario" unique="PRIMARY_KEY" >
				<column name="id_usuario" />
			</index>
		</table>
	</schema>
	<layout name="Default Layout" id="Layout-218e" show_relation="columns" >
		<comment><![CDATA[Default Layout]]></comment>
		<entity schema="modelo_tripulacao.INSTANCE" name="inscricoes" color="C1D8EE" x="448" y="544" />
		<entity schema="modelo_tripulacao.INSTANCE" name="oportunidades" color="C1D8EE" x="128" y="528" />
		<entity schema="modelo_tripulacao.INSTANCE" name="organizacoes" color="C1D8EE" x="48" y="240" />
		<entity schema="modelo_tripulacao.INSTANCE" name="publicacoes" color="C1D8EE" x="176" y="48" />
		<entity schema="modelo_tripulacao.INSTANCE" name="usuarios" color="C1D8EE" x="288" y="240" />
	</layout>
</project>